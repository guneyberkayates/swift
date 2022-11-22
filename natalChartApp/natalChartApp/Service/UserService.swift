//
//  UserService.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation
protocol UserService {
        
        func fetchUser(name : String , birthdate : String, time : String , city : String , country : String ,completion : @escaping(Result<User,Error>) -> Void )
    }
