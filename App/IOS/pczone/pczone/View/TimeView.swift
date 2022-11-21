//
//  TimeView.swift
//  Practice
//
//  Created by binee on 2022/10/02.
//

import SwiftUI

struct TimeView: View {
    
    @Binding var id: String
    @StateObject var vm: TimeJson
    
    init(id: String) {
        self._id = .constant(id)
        self._vm = StateObject(wrappedValue: TimeJson(name: id))
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
    var body: some View {
        
        ScrollView(.horizontal){
            HStack{
                ForEach(vm.posts) { post in
                    Time(name: .constant(post.name), rtime: .constant(post.rtime))
                        .padding()
                        .tag("\(post)")
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        // .never 로 하면 배경 안보이고 .always 로 하면 인디케이터 배경 보입니다.
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        
        .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
        .navigationBarItems(leading: btnBack)
    }
}
