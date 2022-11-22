//
//  APIManager.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 20.09.2022.
//

import Foundation
    

class APIManager : UserService {
    
    func fetchUser(name : String , birthdate : String,  city : String , country : String,completion : @escaping(Result<User,Error>) -> Void ){
        let url = URL(string: "http://127.0.0.1:5000/berkayschart/\(name)/\(birthdate)/\(city)/\(country)")
        
        URLSession.shared.dataTask(with: url!){data , response , error in
            guard let data = data else {return}
            DispatchQueue.main.async {
                if let user = try? JSONDecoder().decode([User].self, from: data).first {
                    completion(.success(user))
                    
                }else{
                    completion(.failure(NSError()))
                }
            }
        }.resume()
    }
}

