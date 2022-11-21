//
//  Hera.swift
//  pczone
//
//  Created by binee on 2022/11/16.
//
import Foundation
import SwiftUI


struct Seat2: View {
    @Binding var name: String
    @StateObject var vm: SeatJson
    
    init(name: String) {
        self._name = .constant(name)
        self._vm = StateObject(wrappedValue: SeatJson(name: name))
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
    var body: some View{
        
        ZStack{
            VStack{
                HStack{
                    UseButton()
                    EmptyButton()
                    Spacer().frame(width: 30)
                    UseButton()
                    UseButton()
                    Spacer().frame(width: 45)
                    UseButton()
                }
                HStack{
                    UseButton()
                    EmptyButton()
                    Spacer().frame(width: 30)
                    EmptyButton()
                    UseButton()
                    Spacer().frame(width: 45)
                    UseButton()
                }
                HStack{
                    UseButton()
                    UseButton()
                    Spacer().frame(width: 30)
                    EmptyButton()
                    EmptyButton()
                    Spacer().frame(width: 45)
                    UseButton()
                }
                HStack{
                    UseButton()
                    EmptyButton()
                    Spacer().frame(width: 30)
                    EmptyButton()
                    UseButton()
                    Spacer().frame(width: 45)
                    UseButton()
                }
                HStack{
                    UseButton()
                    EmptyButton()
                    Spacer().frame(width: 30)
                    UseButton()
                    EmptyButton()
                    Spacer().frame(width: 45)
                    UseButton()
                }
                
                HStack{
                    Text("사용가능 :")
                    Image(systemName: "square")
                        .font(.system(size:20))
                        .foregroundColor(.black)
                    Text("사용중 : ")
                    Image(systemName: "square.fill")
                        .font(.system(size:20))
                        .foregroundColor(.gray)
                }
                .padding([.top],15)
                
                HStack{
                    Text("잔여좌석 : 9석")
                        .font(.system(size:20))
                        .foregroundColor(.black)
                }
                .padding([.top],15)
            }
        }
        .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
        //.navigationBarItems(leading: btnBack)
    }
}
