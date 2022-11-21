//
//  SearchTitle.swift
//  pczone
//
//  Created by binee on 2022/10/25.
//

import SwiftUI

struct SearchTitle: View {
    let name = "3POP PC방 한림대점"
    var body: some View {
            VStack{
                Spacer()
                    VStack{
                        Spacer().frame(height: 30)
                        HStack{
                            Spacer().frame(width: 30)
                            NavigationLink(destination: AdvertiseView2(name: name).navigationTitle("\(name)")){
                                Text("\(name)")
                                    .font(.custom(bm,size : 35))
                                Spacer()
                            }
                        }//HStack
                        Spacer()
                        
                        HStack{
                            HStack{
                                Spacer().frame(width: 15)
                            
                                Spacer()
                            }
                            
                            NavigationLink(destination: Seat2(name: name).navigationTitle("\(name)")){
                                Text("잔여 좌석 : 9석")
                                    .font(.custom(bm,size : 20))
                                    .foregroundColor(Color.gray)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 55)
                                    .background(Color.lemon)
                                    .padding()
                        }
                    }
                }
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity)
                .frame(height: 170)
                .background(Color.white)
            }//VStack
            .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
    }
}
