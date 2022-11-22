//
//  Musicians.swift
//  MusicianClass
//
//  Created by Güney Berkay  on 18.08.2022.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Basist
    case Violenist
    
}


class Musicians{
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    init(nameInit : String , ageInit : Int, InstrumentInit : String , typeInit: MusicianType) {
        name = nameInit
        age = ageInit
        instrument = InstrumentInit
        type = typeInit
    }
    
    func sing() {
        print("nem")
    }
    
    
}
