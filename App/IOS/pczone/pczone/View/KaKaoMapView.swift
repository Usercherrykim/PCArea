//
//  KaKaoMap.swift
//  pczone
//
//  Created by binee on 2022/10/12.
//

import UIKit
import SwiftUI

struct KakaoMapView: UIViewRepresentable {
    func updateUIView(_ uiView: MTMapView, context: Context) {
        
    }
    
  func makeUIView(context: Context) -> MTMapView {
    let view = MTMapView(frame: .zero)
        view.showCurrentLocationMarker = true
      
        let po1 = MTMapPOIItem()
        po1.markerType = .bluePin
        po1.mapPoint = .init(geoCoord: .init(latitude: 37.877004, longitude: 127.735697))
        po1.showAnimationType = .springFromGround
        po1.itemName = "누네띠네 PC방"
        po1.customImageName = "map_pin"
        po1.tag = 1
        view.add(po1)
      
      
      let po2 = MTMapPOIItem()
      po2.markerType = .bluePin
      po2.mapPoint = .init(geoCoord: .init(latitude: 37.882506, longitude: 127.727702))
      po2.showAnimationType = .springFromGround
      po2.itemName = "PC토랑 춘천본점"
      po2.customImageName = "map_pin"
      po2.tag = 2
      view.add(po2)
      
      let po3 = MTMapPOIItem()
      po3.markerType = .bluePin
      po3.mapPoint = .init(geoCoord: .init(latitude: 37.883263, longitude: 127.737951))
      po3.showAnimationType = .springFromGround
      po3.itemName = "3POP PC방 한림대점"
      po3.customImageName = "map_pin"
      po3.tag = 2
      view.add(po3)
                        
      let po4 = MTMapPOIItem()
      po4.markerType = .bluePin
      po4.mapPoint = .init(geoCoord: .init(latitude: 37.883538, longitude: 127.738343))
      po4.showAnimationType = .springFromGround
      po4.itemName = "The Hera PC방"
      po4.customImageName = "map_pin"
      po4.tag = 2
      view.add(po4)
      
      let po5 = MTMapPOIItem()
      po5.markerType = .bluePin
      po5.mapPoint = .init(geoCoord: .init(latitude: 37.8836, longitude: 127.738846))
      po5.showAnimationType = .springFromGround
      po5.itemName = "Bohemian PC방"
      po5.customImageName = "map_pin"
      po5.tag = 2
      view.add(po5)
      
      let po6 = MTMapPOIItem()
      po6.markerType = .bluePin
      po6.mapPoint = .init(geoCoord: .init(latitude: 37.881409, longitude: 127.727207))
      po6.showAnimationType = .springFromGround
      po6.itemName = "레전드 PC방"
      po6.customImageName = "map_pin"
      po6.tag = 2
      view.add(po6)
      
      let po7 = MTMapPOIItem()
      po7.markerType = .bluePin
      po7.mapPoint = .init(geoCoord: .init(latitude: 37.875434, longitude: 127.734913))
      po7.showAnimationType = .springFromGround
      po7.itemName = "노틸러스 PC방 춘천본점"
      po7.customImageName = "map_pin"
      po7.tag = 2
      view.add(po7)
      
      let po8 = MTMapPOIItem()
      po8.markerType = .bluePin
      po8.mapPoint = .init(geoCoord: .init(latitude: 37.873701, longitude: 127.74272))
      po8.showAnimationType = .springFromGround
      po8.itemName = "라이또 PC방 강원대점"
      po8.customImageName = "map_pin"
      po8.tag = 2
      view.add(po8)
      
      let po9 = MTMapPOIItem()
      po9.markerType = .bluePin
      po9.mapPoint = .init(geoCoord: .init(latitude: 37.858834, longitude: 127.74189))
      po9.showAnimationType = .springFromGround
      po9.itemName = "라이또 PC방 강원대점"
      po9.customImageName = "map_pin"
      po9.tag = 2
      view.add(po9)
      return view
  }
}
class MapSceneViewModel: ObservableObject {

}
