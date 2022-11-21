//
//  TabView.swift
//  Practice
//
//  Created by binee on 2022/10/10.
//

import SwiftUI
import UIKit

struct MyTabView : View {
    @State var id = "paul"
    @State var toFirstView = false
    @State private var selection = 0
    init() {

    }
    
    init(id: String) {
        self.id = id
    }
    
    var body: some View{
        
        TabView(selection: $selection){ // 탭뷰를 걸어준다.
            // 보여질 화면
            
            ContentView() // 뷰
                .tabItem { // 뷰에 탭 아이템을 건다!
                    Image(systemName: "house")
                    Text("홈")
                }
                .tag(0) // tag설정
            
             SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("PC방")
                }
                .tag(1)
            
             SettingView(id: $id, toFirstView: $toFirstView)
                .tabItem{
                    Image(systemName: "line.3.horizontal")
                    Text("설정")
                }
                .tag(2)
        }
        .onAppear() {
                    UITabBar.appearance().barTintColor = .white
                }
                .accentColor(.black)
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

