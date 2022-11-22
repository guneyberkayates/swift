//
//  MusicianStruct.swift
//  AdvencedSwift
//
//  Created by Güney Berkay  on 5.09.2022.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBday(){
        self.age += 1
    }
}
