//
//  RegexPatterns.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

enum RegexPatterns {
 
    static let higherThanTwelveChars = "^.{12,}$"
    static let name = "^[a-zA-Z-]+(([',. -][a-zA-Z]?[a-zA-Z]*)*$"
}
