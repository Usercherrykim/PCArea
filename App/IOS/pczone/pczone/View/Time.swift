//
//  Time.swift
//  Practice
//
//  Created by binee on 2022/10/04.
//

import SwiftUI
import UIKit

struct Time: View {
    @Binding var name: String
    @Binding var rtime: String
    
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                Spacer().frame(height: 45)
                VStack(alignment: .leading){
                    Text("\(name)")
                        .font(.system(size : 23).bold())
                        .padding([.bottom],40)
                }
                HStack{
                    Text("잔여시간 : \(rtime)분")
                }//HStack
                .font(.system(size : 15).bold())
                
                Spacer().frame(height: 30)
                
                HStack{
                    Text("잔여좌석 : ")
                    Text("9석")
                }//HStack
                .font(.system(size : 15).bold())
                
                Spacer().frame(height: 35)
                
                NavigationLink(destination: AdvertiseView2(name: name).navigationTitle("\(name)")){
                    Text("바로가기")
                        .font(.system(size : 23).bold())
                        .frame(width: 130)
                        .frame(height: 35)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                }//NavigationLink
                
                Spacer().frame(height: 45)
            }//VStack
        }//ZStack
        .frame(width: 220)
        .frame(height: 300)
        .background(Image("green").resizable())
        .foregroundColor(.black)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(alignment: .leading)
    }
}
