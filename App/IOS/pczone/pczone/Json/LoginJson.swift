//
//  LoginJson.swift
//  pczone
//
//  Created by binee on 2022/11/15.
//

import Foundation

struct Login: Codable{
    var success: String = ""
}

class LoginJson: ObservableObject {
    
   @Published var post: Login = Login()
    
    init(id: String, pw: String) {
        getPosts(id: id, pw: pw)
    }
    
    func getPosts(id: String, pw: String) {
        
        var url = "http://pcarea.dothome.co.kr/pcarea_login.php?"
        url += "id=\(id)&pw=\(pw)"
        let urls = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        print(url)
        guard let url = URL(string: urls) else { return }
        downloadData(fromURL: url) { returnedData in
            if let data = returnedData {
                //newPost는 옵셔널 이기 때문에 guard
                guard let newPost = try? JSONDecoder().decode(Login.self, from: data) else {
                    return }
                DispatchQueue.main.async { [weak self] in
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

