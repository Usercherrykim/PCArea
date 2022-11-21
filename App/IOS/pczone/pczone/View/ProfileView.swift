//
//  ProfileView.swift
//  Practice
//
//  Created by binee on 2022/10/02.
//

import SwiftUI
struct ProfileView : View {
var body: some View{
    
        NavigationView{
        //ScrollView{
            VStack{
                Text("이름")
                    .font(.custom(bm,size: 20))
                    .fontWeight(.black)
                    Spacer().frame(height: 20)
                
                Text("계정 : ")
                    .font(.custom(bm,size: 20))
                    .fontWeight(.black)
                
                HStack{
                        Text("???")
                            .font(.custom(bm,size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(15)
                    
                        Text("???")
                        .font(.custom(bm,size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(15)
                    
                } // Hstack
                .padding(20)
                }// Vstack
            //} // ScrollView
        }
    } // View
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
