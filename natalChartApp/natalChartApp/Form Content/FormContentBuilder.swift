//
//  FormContentBuilder.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation
import Combine
final class FormContentBuilder {
    private(set) var user = PassthroughSubject<[String: Any],Never>()
    
    private(set) var formContent = [
        
            FormSectionComponent(items: [
                TextFormComponent(id: .name ,placeholder : "Name", validations: [RegexValidationManager([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "invalid name entered"))])]),
                TextFormComponent(id: .city ,placeholder : "City", validations: [RegexValidationManager([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "invalid city entered"))])]),
              TextFormComponent(id: .country ,placeholder : "Country", validations: [RegexValidationManager([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "invalid country entered"))])]),
                DateComponent(id: .dob,mode :.dateAndTime,validations: [
                DateValidationManager()]),
                
                ButtonComponent(id : .submit, title : "Analyze")
                
            ])
        ]
    func update(val : Any, at indexPath : IndexPath){
        formContent[indexPath.section].items[indexPath.row].value = val
    }
    func validate(){
        do {
            let formComponents = formContent
                .flatMap {$0.items}
                .filter{$0.formId != .submit}
            for component in formComponents {
                for validator in component.validations {
                    try validator.validate(component.value as Any)
                }
                }
            let validValues = formComponents.map{($0.formId.rawValue,$0.value)}
            let validDict = Dictionary(uniqueKeysWithValues: validValues) as [String : Any]
            user.send(validDict)
        } catch {
            print("\(error)")
        }
    }
    
    }
