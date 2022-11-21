//
//  AddView.swift
//  Practice
//
//  Created by binee on 2022/10/02.
//

import SwiftUI
import UIKit

struct AddView: View {
    var body: some View {
        NavigationView(){
            Text("앱 이름  PC Area")
                .font(.custom(bm, size: 20))
                
        }
        .onAppear{
            for family: String in UIFont.familyNames {
                print(family)
                for names : String in UIFont.fontNames(forFamilyName: family){
                    print("=== \(names)")
                }
            }
        }
        .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
