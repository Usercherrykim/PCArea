//
//  MyView.swift
//  Practice
//
//  Created by binee on 2022/10/10.
//

import SwiftUI

struct MyView : View {
    
    var title: String
    
    var body: some View {
        
        ZStack{
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
            
        }
        .animation(.none) // 커스텀 탭뷰에서 이 코드가 없으면 화면 자체에도 애니메이션이 걸리기 때문에 필요
    }
}

