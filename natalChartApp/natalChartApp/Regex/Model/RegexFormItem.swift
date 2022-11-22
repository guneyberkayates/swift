//
//  RegexFormItem.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation

struct RegexFormItem{
    let pattern : String
    let error : ValidationError
    
    
}

protocol ValidationManager {
    func validate(_ val : Any ) throws
}

struct RegexValidationManager : ValidationManager {
    private let items : [RegexFormItem]
    
    init(_ items : [RegexFormItem]){
        self.items = items
    }
    func validate(_ val: Any) throws {
        let val = (val as? String) ?? ""
        try items.forEach {regexItem in
            let regex = try? NSRegularExpression(pattern: regexItem.pattern)
            let range = NSRange(location: 0, length: val.count)
            if regex?.firstMatch(in: val,options: [] ,range: range) == nil {
                throw regexItem.error
            }
            
        }
    }
}

struct DateValidationManager : ValidationManager {
    
    func validate(_ val: Any) throws {
        guard val is Date else {
            throw ValidationError.custom(message: "Invalid Value passed")
        }
        
    }
    
    
}

