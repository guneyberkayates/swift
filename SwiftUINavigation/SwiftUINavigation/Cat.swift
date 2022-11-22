//
//  Cat.swift
//  SwiftUINavigation
//
//  Created by Güney Berkay  on 14.09.2022.
//

import Foundation
import UIKit

struct Cat : Identifiable,Hashable {
    var id = UUID()
    let name : String
}

let cats : [Cat] = [Cat(name: "Barley"),Cat(name: "Lucky"), Cat(name: "Daisy"), Cat(name: "Jack")]

