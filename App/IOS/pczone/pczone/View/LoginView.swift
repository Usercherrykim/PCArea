//
//  LoginView.swift
//  Practice
//
//  Created by binee on 2022/10/01.
//

import SwiftUI
import UIKit



let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView : View {

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
    @Binding var id: String
    @Binding var toFirstView: Bool
    
    @State var ID: String = ""
    @State var password: String = ""
    @State var tag:Int? = nil
    @State private var loginsucess = false
    @State private var selection = 0
    
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
                    
                    let vm = LoginJson(id: ID, pw: password)
                    
                    Button(action: {
                        if("true" == vm.post.success){
                            toFirstView = false
                            id = ID
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
        .navigationBarItems(leading: btnBack)
    }
}



struct WelcomeText : View {
    var body: some View {
        return Text("PC Area")
            .font (.system(size : 50))
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}
