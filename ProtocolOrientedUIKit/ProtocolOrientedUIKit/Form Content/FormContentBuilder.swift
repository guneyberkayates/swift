//
//  FormContentBuilder.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import Foundation
import Combine
final class FormContentBuilder {
    private(set) var user = PassthroughSubject<[String: Any],Never>()
    
    private(set) var formContent = [
        
            FormSectionComponent(items: [
                TextFormComponent(id: .name ,placeholder : "Name" ),
                TextFormComponent(id: .city ,placeholder : "City"),
              TextFormComponent(id: .country ,placeholder : "Country"),
                DateComponent(id: .dob,mode :.dateAndTime),
                
                ButtonComponent(id : .submit, title : "Analyze"),
                
            ])
        ]
    func update(val : Any, at indexPath : IndexPath){
        formContent[indexPath.section].items[indexPath.row].value = val
    }
    
    
    }

