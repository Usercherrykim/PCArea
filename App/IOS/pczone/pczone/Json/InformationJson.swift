//
//  InformationJson.swift
//  pczone
//
//  Created by binee on 2022/11/08.
//

import Foundation

struct Info: Codable{
    var name: String = ""
    var address: String = ""
    var time: String = ""
    var number: String = ""
    var price: String = ""
    var info: String = ""
    var spec: String = ""
}

class InformationJson: ObservableObject {
    
   @Published var post: Info = Info()
    
    init(name: String) {
        getPosts(name: name)
    }
    
    func getPosts(name: String) {
        
        var url = "http://pcarea.dothome.co.kr/pcarea_pcinfo.php?"
        url += "name=\(name)"
        let urls = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        print(url)
        
        guard let url = URL(string: urls) else { return }
        
        downloadData(fromURL: url) { returnedData in
            if let data = returnedData {
                //newPost는 옵셔널 이기 때문에 guard
                guard let newPost = try? JSONDecoder().decode(Info.self, from: data) else {
                    return }
                DispatchQueue.main.async { [weak self] in
                    print(newPost)
                    self?.post = newPost
                }
            } else {
                print("반환될 데이터가 존재하지 않습니다.")
            }
        }
    }
    
    func downloadData(fromURL url: URL, complectionHandler: @escaping (_ data: Data?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                    print("데이터 다운로드에 실패했습니다.")
                    complectionHandler(nil)
                    return
                }
            complectionHandler(data)
        }
        .resume()
        
    }
}
