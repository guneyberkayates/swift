//
//  UserService.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 20.09.2022.
//

import Foundation

protocol UserService {
        
    func fetchUser(name : String , birthdate : String,  city : String , country : String ,completion : @escaping(Result<User,Error>) -> Void )
    }
