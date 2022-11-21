//
//  MenuView.swift
//  PC Area
//
//  Created by binee on 2022/11/21.
//

import SwiftUI

struct MenuView : View{
    var body: some View{
        VStack(spacing: 0){
            ZStack{
                HStack{
                        Image("ramen1")
                            .resizable()
                            .frame(maxWidth: 135)
                            .frame(maxHeight: 130)
                            .font(.system(size:23))
                            .background(Color.pink)
                        VStack(alignment: .leading){
                            Text("카구리 라면")
                                .font(.system(size : 23).weight(.bold))
                                .padding([.bottom],10)
                            Text("요즘 핫한 카구리 라면")
                                .font(.system(size : 13))
                                .padding([.bottom])
                        }
                        .foregroundColor(Color.black)
                        Spacer()
                }//HStack
            }//ZStack
            .background(Color.white)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 130)
            ZStack{
                HStack{
                        Image("ramen2")
                            .resizable()
                            .frame(maxWidth: 135)
                            .frame(maxHeight: 130)
                            .font(.system(size:23))
                            .background(Color.pink)
                        VStack(alignment: .leading){
                            Text("숙주사키 라면")
                                .font(.system(size : 23).weight(.bold))
                                .padding([.bottom],10)
                            Text("숙주사키 라면")
                                .font(.system(size : 13))
                                .padding([.bottom])
                        }
                        .foregroundColor(Color.black)
                        Spacer()
                }//HStack
            }//ZStack
            .background(Color.white)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 130)
            ZStack{
                HStack{
                        Image("ramen3")
                            .resizable()
                            .frame(maxWidth: 135)
                            .frame(maxHeight: 130)
                            .font(.system(size:23))
                            .background(Color.pink)
                        VStack(alignment: .leading){
                            Text("짜계치 라면")
                                .font(.system(size : 23).weight(.bold))
                                .padding([.bottom],10)
                            Text("짜파게티 + 계란 + 치즈의 환상조합")
                                .font(.system(size : 13))
                                .padding([.bottom])
                        }
                        .foregroundColor(Color.black)
                        Spacer()
                }//HStack
            }//ZStack
            .background(Color.white)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 130)
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
