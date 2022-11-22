//
//  UserViewModelProtocol.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 20.09.2022.
//

import Foundation

protocol UserViewModelProtocol :AnyObject{
    func updateView(housesList : String, planets: String)
}
