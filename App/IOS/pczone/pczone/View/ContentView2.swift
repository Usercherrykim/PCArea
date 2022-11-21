//
//  ContentView2.swift
//  pczone
//
//  Created by binee on 2022/11/18.
//

import SwiftUI
// 7-2
import Combine

//MARK: MODEL
//get post 1의 Json 데이터와 동일한 모델 생성
// postModel을 디코딩하고 인코딩을 원하기 때문에 codable 추가
struct Login1: Codable {
    var success: String = ""
}

class downloadwithCombineViewModel: ObservableObject {
    
    @Published var post: Login1 = Login1()
    // 7-3
    var canclelables = Set<AnyCancellable>()
    
    init(id: String, pw: String) {
        getPosts(id: id, pw: pw)
    }
    
    func getPosts(id: String, pw: String) {
        
        var url = "http://pcarea.dothome.co.kr/pcarea_login.php?"
        url += "id=\(id)&pw=\(pw)"
        let urls = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        print(url)
        guard let url = URL(string: urls) else { return }
        
        //comebine 프레임워크 https://developer.apple.com/documentation/combine/
        
        // Combine 해설:
        /*
         // 1. 어떠한 패키지에 대한 매월 정기구독을 가입함
         // 2. 회사는 페키지를 공장에서 생상함
         // 3. 패키지를 배송하고 고객은 상품을 전달받음
         // 4. 사용자는 패키지의 상태가 손상되었는지 확인함
         // 5. 상자를 열고 항목이 올바른지 확인함
         // 6. 항목을 사용함!!
         // 7. 위 구독은 언제든지 취소가 가능함
         */
        
        /* ==========================  */
        
        // 1. Publisher 생성 (dataTaskPublisher)
        URLSession.shared.dataTaskPublisher(for: url)
        // 2. subscribe publisher을 background Thread로 옮겨줌
        // (실제로 dataTask는 background Thread에서 작업되지만 가끔 publiser가 명시적으로 bakcground에 있지 않으므로 이 라인을 호출함
            .subscribe(on: DispatchQueue.global(qos: .background))
        // 3. Main Thread에서 수신 함
            .receive(on: DispatchQueue.main)
        
        // 9.
            .tryMap(handleOutput)
        // 4. tryMap (data가 있는지 없는지 상태가 좋은지 확인)
        // TryMap은 실패하고 오류를 발생시킬 수 있는 지도입니다.
        //            .tryMap { data, response -> Data in
        //
        //                guard
        //                    let response = response as? HTTPURLResponse,
        //                    response.statusCode >= 200 && response.statusCode < 300 else {
        //                        throw URLError(.badServerResponse)
        //                    }
        //                return data
        //            }
        //
        // 5. decode (데이터를 PostModel로 디코딩)
            .decode(type: Login1.self, decoder: JSONDecoder())
        
        // 6. sink(항목을 앱에 추가한다)
            .sink { completion in
                print("Completion: \(completion)")
            } receiveValue: { [weak self] returnedPosts in
                self?.post = returnedPosts
            }
        
        // 7-1. store (필요한경우 구독을 취소함)
            .store(in: &canclelables)
    }
    
    //8. 만약 호출에 성공하지 못했다는 가정하에 몇가지 로직을 넣음
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard
            let response = output.response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
                throw URLError(.badServerResponse)
            }
        return output.data
    }
}


struct ContentView2: View {
    @Binding var id: String
    @Binding var toFirstView: Bool
    @State var ID: String = ""
    @State var password: String = ""
    @State var tag:Int? = nil
    @State private var loginsucess = false
    @State private var selection = 0
    @StateObject var vm = downloadwithCombineViewModel(id: "", pw: "")
    
    var body: some View {
        NavigationView(){
            ZStack{
                VStack {
                    Spacer().frame(height: 80)
                    WelcomeText()
                        .padding(.bottom,70)
                    TextField("ID", text: $ID)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 40)
                    
                    Button(action: {
                        if("true" == vm.post.success){
                            id = ID
                            toFirstView = false
                            loginsucess = true
                        }}){
                        Text("LOGIN")
                    }
                    .alert("LOGIN", isPresented: $loginsucess) {
                        Button("OK") {
                            selection
                        }
                    }message: {
                        Text("Login Sucess")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.Sky_blue)
                    .cornerRadius(15.0)
                    Spacer()
                    
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
    }
}

