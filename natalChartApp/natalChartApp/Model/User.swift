//
//  User.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation


// MARK: - WelcomeElement
struct User: Codable {
    let eightHouse, eleventhHouse, fifthHouse, firstHouse: String
    let fourthHouse, ninthHouse, secondHouse, seventhHouse: String
    let sixthHouse, tenthHouse, thirdHouse, twelfthHouse: String
    let jupiter, mars, mercury, moon: String
    let neptune, pluto, saturn, sun: String
    let uranus, venus: String

    enum CodingKeys: String, CodingKey {
        case eightHouse = "Eight House"
        case eleventhHouse = "Eleventh House"
        case fifthHouse = "Fifth House"
        case firstHouse = "First House"
        case fourthHouse = "Fourth House"
        case ninthHouse = "Ninth House"
        case secondHouse = "Second House"
        case seventhHouse = "Seventh House"
        case sixthHouse = "Sixth House"
        case tenthHouse = "Tenth House"
        case thirdHouse = "Third House"
        case twelfthHouse = "Twelfth House"
        case jupiter, mars, mercury, moon, neptune, pluto, saturn, sun, uranus, venus
    }
}

