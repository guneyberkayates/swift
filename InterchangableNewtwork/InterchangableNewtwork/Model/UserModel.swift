//
//  UserModel.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 16.09.2022.
//

import Foundation

struct User : Codable {
    let housesList: hList
    let planets: pList
    let positions: String
}

struct hList : Codable {
    let name,quality,element,sign,sign_num,position,abs_pos,emoji,point_type : String
    
    
}

struct pList : Codable {
    let name,quality,element,sign,sign_num,position,abs_pos,emoji,point_type,house,retrograde : String
    
    
}
