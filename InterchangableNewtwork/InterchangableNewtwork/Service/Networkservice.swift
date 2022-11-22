//
//  Networkservice.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 16.09.2022.
//

import Foundation

protocol Networkservice{
    func download(_ resource: String) async throws -> [User]
    var type : String { get }
}
