//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Güney Berkay  on 14.09.2022.
//

import Foundation

struct Dog: Identifiable, Hashable{
    var id = UUID()
    let name : String
    
}
let dogs : [Dog] = [Dog(name: "Barley"), Dog(name: "Lucky"), Dog(name: "Daisy"),Dog(name: "Jack")]
