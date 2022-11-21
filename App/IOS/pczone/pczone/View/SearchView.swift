//
//  SearchView.swift
//  Practice
//
//  Created by binee on 2022/10/02.
//

import SwiftUI
import UIKit

struct SearchView: View {
    var body: some View {
        NavigationView(){
            ZStack{
                KakaoMapView()
                    .edgesIgnoringSafeArea(.all)
                SearchTitle()
            }//ZStack
            .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
