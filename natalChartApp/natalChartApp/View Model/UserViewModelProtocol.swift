//
//  UserViewModelProtocol.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation
protocol UserViewModelProtocol :AnyObject{
    func updateView(housesList : String, planets: String)
}
