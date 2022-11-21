//
//  EmptyButton.swift
//  PC Area
//
//  Created by binee on 2022/11/21.
//

import SwiftUI

struct EmptyButton: View{
    var body: some View{
        Button(action: {}){
            Image(systemName: "square")
                .font(.system(size:40))
                .foregroundColor(.black)
        }
    }
}
