//
//  Constants.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 16.09.2022.
//

import Foundation



struct Constants : PassArguments{
    
    struct Paths {
        static let baseUrl = "users"
    }
    
    struct Urls :  {
        static let baseUrl = "http://127.0.0.1:5000/berkayschart"
       
        static let usersExtension = "http://127.0.0.1:5000/berkayschart/\(PassArguments.name)/\(PassArguments.birthdate)/\(PassArguments.time)/\(PassArguments.city)/\(PassArguments.country)"
       
    }
}


