//
//  SettingView.swift
//  Practice
//
//  Created by binee on 2022/10/02.
//

import SwiftUI

struct SettingView : View{
    @Binding var id: String
    @Binding var toFirstView: Bool

    var body: some View {
        NavigationView(){
            ZStack{
                VStack(alignment : .leading, spacing: 25){
                    Spacer().frame(height: 25)
                    Group{
                        Text("내 정보")
                            .padding([.leading],30)
                        Divider()
                        Text("공지사항")
                            .padding([.leading],30)
                        Divider()
                    }
                    Group{
                        NavigationLink(destination: SecurityView().navigationBarTitle("개인정보 처리방침")){
                            Text("개인정보 처리방침")
                                .padding([.leading],30)
                            Spacer().frame(alignment: .leading)
                        }
                        Divider()
                        NavigationLink(destination: LoginView(id: $id, toFirstView: $toFirstView)){
                            Text("로그아웃")
                                .padding([.leading],30)
                            Spacer().frame(alignment: .leading) 
                        }
                        Divider()
                    }
                    .frame(maxWidth: .infinity)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .font(.custom(bm, size : 18))
                .foregroundColor(.black)
            }
            .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
        }
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(id: .constant("paul"), toFirstView: .constant(true))
    }
}
