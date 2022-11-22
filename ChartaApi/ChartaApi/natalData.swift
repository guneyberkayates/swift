//
//  natalData.swift
//  ChartaApi
//
//  Created by Güney Berkay  on 10.09.2022.
//

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Identifiable, Codable {
    let id = UUID()
    
    let housesList, housesPositions, name, planets: String
    let positions: String
}

typealias Welcome = [WelcomeElement]

