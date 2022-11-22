//
//  JokesData.swift
//  JokesApp
//
//  Created by Güney Berkay  on 6.09.2022.
//
import Foundation



struct natalChart : Identifiable,Codable {
    let id = UUID()
    let housesList : String?
    let housesPositions : String?
    let name : String?
    let planets : String?
    let positions : String?

    enum CodingKeys: String, CodingKey {

        case housesList = "housesList"
        case housesPositions = "housesPositions"
        case name = "name"
        case planets = "planets"
        case positions = "positions"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        housesList = try values.decodeIfPresent(String.self, forKey: .housesList)
        housesPositions = try values.decodeIfPresent(String.self, forKey: .housesPositions)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        planets = try values.decodeIfPresent(String.self, forKey: .planets)
        positions = try values.decodeIfPresent(String.self, forKey: .positions)
    }

}
