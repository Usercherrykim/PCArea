//
//  InformationView.swift
//  pczone
//
//  Created by binee on 2022/10/25.
//

import Foundation
import SwiftUI

struct InformationPhoto: View {    
    @Binding var info: Info
    
    let photos = [Image("3pop[01]"),Image("3pop[02]"),Image("3pop[03]")]
                  
    var body: some View {
            return GeometryReader { proxy in
                ScrollView(){
                    VStack{
                        ScrollView(.horizontal) {
                            HStack(spacing: 0) {
                                ForEach(photos.indices) { index in
                                    photos[index]
                                        .resizable()
                                }
                                .frame(width: proxy.size.width, height: 300)
                            }//HStack
                        }
                        
                        Spacer().frame(height: 0)
                        
                        VStack(alignment: .leading, spacing: 20){
                                Group{
                                    Spacer().frame(height: 0)
                                    HStack(){
                                        Image(systemName: "location.circle")
                                        Text("\(info.address)")
                                    }
                                    .padding([.leading])
                                    Divider()
                                    
                                    HStack(){
                                        Image(systemName: "clock")
                                        Text("\(info.time)")
                                            .fontWeight(.bold)
                                    }
                                    .padding([.leading])
                                    Divider()
                                    
                                    HStack(){
                                        Image(systemName: "phone")
                                        Text("\(info.number)")
                                    }
                                    .padding([.leading])
                                    Divider()
                                    
                                    HStack(){
                                        Image(systemName: "wonsign.circle")
                                        Text("\(info.price)")
                                    }
                                    .padding([.leading])
                                    Divider()
                                }//Group
                                
                                Group{
                                    HStack(){
                                        Image(systemName: "house")
                                        Text("\(info.info)")
                                    }
                                    .padding([.leading])
                                    Divider()
                                    
                                    HStack(){
                                        Image(systemName: "newspaper")
                                        
                                        let spec = info.spec.replacingOccurrences(of: "%", with: "\n")
                                        Text("\(spec)")
                                        
                                    }
                                    .padding([.leading])
                                    Divider()
                                    
                                    Spacer()
                                }
                            }
                        }//VStack
                }//ScrollView
                .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}
