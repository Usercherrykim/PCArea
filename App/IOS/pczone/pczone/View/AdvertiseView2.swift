//
//  AdvertiseView2.swift
//  Practice
//
//  Created by binee on 2022/10/10.
//

import SwiftUI


struct AdvertiseView2: View {
    @Binding var name: String
    @StateObject var vm: InformationJson
    
    init(name: String) {
        self._name = .constant(name)
        self._vm = StateObject(wrappedValue: InformationJson(name: name))
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.left") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
            }
        }
    }
    // 현재 클릭된 버튼 추적
    @State var clickedIndex: Int = 0
    @State private var showDetails = false

    // 화면에 표시할 텍스트 모음
    let categories: [String] = ["정보", "메뉴", "잔여좌석"]
    
    
        var body: some View {
            return GeometryReader { proxy in
                VStack(spacing: 0){
                    // 옆으로 버튼 나열
                    //ScrollView(.horizontal){
                        HStack{
                            ForEach(categories.indices) { i in
                                Button(action: {clickedIndex = i}, label: {
                                    Text(categories[i])
                                        .foregroundColor(i == clickedIndex ? .black : .gray)
                                        .font(i == clickedIndex ? .custom(bm, size: 17).bold(): .custom(bm, size: 17))
                                })
                                .frame(maxWidth: .infinity)
                                .padding()
                            }
                        }
                    //} //ScrollView
                    .foregroundColor(.gray)
                    Divider()
                    //Spacer()
                    
                    if (clickedIndex == 0) {
                        Spacer().frame(height: 0)
                        InformationPhoto(info: .constant(vm.post))
                    }else if(clickedIndex == 1) {
                        Spacer().frame(height: 0)
                        MenuView()
                    }else if(clickedIndex == 2) {
                        Spacer().frame(height: 35)
                        Seat2(name: vm.post.name)
                    }else{
                        Text("Error")
                    }
            }//ScrollView
        }//VStack
            .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
            .navigationBarItems(leading: btnBack)
    }
}
