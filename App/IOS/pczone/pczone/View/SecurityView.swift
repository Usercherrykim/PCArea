//
//  SecurityView.swift
//  pczone
//
//  Created by binee on 2022/11/15.
//

import SwiftUI


struct SecurityView: View {
    
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
    
    var body: some View {
        Spacer().frame(height: 30)
        Text("PC_Area 개인정보 처리방침")
            .font(.system(size: 23).bold())
        
        Spacer().frame(height: 20)
        
        Text("개인정보 처리방침”이란 이용자가 안심하고 서비스를 이용할 수 있도록 회사가 준수해야 할 지침을 의미하며, PC_Area는 정보통신서비스제공자가 준수하여야 하는 대한민국의 관계 법령 및 개인정보보호 규정, 가이드라인을 준수하여 개인정보 처리방침을 제공합니다.")
            .font(.system(size: 15))
            .foregroundColor(Color.gray)
            .padding()
        Spacer().frame(height: 15)
        
        Text("PC_Area는 이용자의 동의를 기반으로 개인정보를\n수집·이용 및 제공하고 있습니다. 이용자의 권리(개인정보 자기결정권)를 적극적으로 보장하기 위해 개인정보 처리방침을 알기 쉽게 제공할 수 있도록 다양한 노력을 기울이고 있으며, 이러한 노력의 일환으로 PC_Area의 주요 개인정보 처리 관련 정보를 라벨링으로 제공합니다.")
            .font(.system(size: 15))
            .foregroundColor(Color.gray)
            .padding()
        Spacer()
            .navigationBarBackButtonHidden(true) // 뒤로가기 숨기기
            .navigationBarItems(leading: btnBack)
    }
}

