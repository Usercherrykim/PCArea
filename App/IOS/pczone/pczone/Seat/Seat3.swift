//
//  Seat3.swift
//  pczone
//
//  Created by binee on 2022/11/16.
//
import Foundation
import SwiftUI

struct Seat3: View {
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                            .foregroundColor(.blue)
                    }
                    Spacer().frame(width: 45)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Spacer().frame(width: 30)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square.fill")
                            .font(.system(size:50))
                            .foregroundColor(.red)
                    }
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                            .foregroundColor(.blue)
                    }
                    Spacer().frame(width: 45)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Spacer().frame(width: 30)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square.fill")
                            .font(.system(size:50))
                            .foregroundColor(.red)
                    }
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                            .foregroundColor(.blue)
                    }
                    Spacer().frame(width: 45)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Spacer().frame(width: 30)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square.fill")
                            .font(.system(size:50))
                            .foregroundColor(.red)
                    }
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                            .foregroundColor(.blue)
                    }
                    Spacer().frame(width: 45)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Spacer().frame(width: 30)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square.fill")
                            .font(.system(size:50))
                            .foregroundColor(.red)
                    }
                }
                HStack{
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                            .foregroundColor(.blue)
                    }
                    Spacer().frame(width: 45)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Spacer().frame(width: 30)
                    Button(action: {}){
                        Image(systemName: "square")
                            .font(.system(size:50))
                    }
                    Button(action: {}){
                        Image(systemName: "square.fill")
                            .font(.system(size:50))
                            .foregroundColor(.red)
                    }
                }
                HStack{
                    Text("???????????? :")
                    Image(systemName: "square")
                        .font(.system(size:20))
                        .foregroundColor(.black)
                    Text("????????? : ")
                    Image(systemName: "square.fill")
                        .font(.system(size:20))
                        .foregroundColor(.gray)
                }
                .padding([.top],15)
            }
        }
    }
}

struct Seat3_Previews: PreviewProvider {
    static var previews: some View {
        Seat3()
    }
}
