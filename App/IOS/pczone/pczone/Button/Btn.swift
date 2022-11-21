//
//  Button.swift
//  PC Area
//
//  Created by binee on 2022/11/21.
//

import SwiftUI

struct Btn: View{
    @Binding var token: Bool
    
    var body: some View{
        if(token) {
            Button(action: {}){
                Image(systemName: "square.fill")
                    .font(.system(size:40))
                    .foregroundColor(.gray)
            }
        }else {
            Button(action: {}){
                Image(systemName: "square")
                    .font(.system(size:40))
                    .foregroundColor(.black)
            }
        }
    }
}
