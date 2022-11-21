//
//  ContentView.swift
//  pczone
//
//  Created by binee on 2022/10/27.
//

import SwiftUI
import UIKit
import Foundation

extension UINavigationController : UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    // MARK :  Navigation Stack에 쌓인 뷰가 1개를 초과해야 제스처가 동작 하도록
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
            return viewControllers.count > 1
    }
}

struct ContentView: View {
    @State var id = ""
    @StateObject var vm = TimeJson(name: "paul")
    
    @State var clickedIndex: Int = 0
    
    init() {

    }
    
    init(id: String) {
        self.id = id
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer().frame(height: 10)
                    HStack{
                        //Spacer().frame(width: 20)
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(vm.posts) { post in
                                    Time(name: .constant(post.name), rtime: .constant(post.rtime))
                                        .padding()
                                        .tag("\(post)")
                                }
                            }
                        }
                    }
                Spacer()
                
                TabView{
                    Image("ad1")
                        .resizable()
                        .frame(height: 200) // 높이지정
                        .frame(maxWidth: .infinity) // 가로길이는 무한
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding([.leading,.trailing])
                        .tag(0)
                    Image("ad2")
                        .resizable()
                        .frame(height: 200) // 높이지정
                        .frame(maxWidth: .infinity) // 가로길이는 무한
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding([.leading,.trailing])
                        .tag(1)
                    Image("ad3")
                        .resizable()
                        .frame(height: 200) // 높이지정
                        .frame(maxWidth: .infinity) // 가로길이는 무한
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding([.leading,.trailing])
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                // .never 로 하면 배경 안보이고 .always 로 하면 인디케이터 배경 보입니다.
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                Spacer().frame(height: 10)
            }//VStack
            
            .navigationBarItems(leading: Image("PC_ICON")
                .resizable()
                .frame(width: 120,height: 110)
                .font(.system(size:23))
                .foregroundColor(Color.black)
                .padding([.leading],1.0)
            )
        }//NavigationView
        

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
