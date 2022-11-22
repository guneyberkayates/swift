//
//  formModel.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit

protocol FormItem {
    var id : UUID {get}
    var formId : FormField {get}
    
    
}

protocol FormSectionItem {
    var id: UUID {get}
    var items : [FormComponent] {get}
    init(items: [FormComponent])
}

enum FormField : String,CaseIterable {
    case name
    case dob
    case city
    case country
    case submit
}




final class FormSectionComponent : FormSectionItem,Hashable {
    var id : UUID = UUID()
    var items : [FormComponent]
    
    init(items : [FormComponent]){
        self.items = items
    }
    func hash(into hasher : inout Hasher){
        hasher.combine(id)
    }
    static func == (lhs : FormSectionComponent, rhs : FormSectionComponent) -> Bool {
        lhs.id == rhs.id
    }
    
}
class FormComponent : FormItem , Hashable{
    
    
    let id = UUID()
    let formId: FormField
    var value : Any?
  

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: FormComponent,rhs : FormComponent) -> Bool {
        lhs.id == rhs.id
    }
    
    init(_ id : FormField){
        self.formId = id
       
      }
    }
    
    
    final class TextFormComponent : FormComponent {
        let placeholder : String
        let keyboardType : UIKeyboardType
        init(id : FormField,placeholder: String,keyboardType : UIKeyboardType = .default) {
            self.placeholder = placeholder
            self.keyboardType = keyboardType
            super.init(id)
        }
        
    }
    final class DateComponent : FormComponent {
        let mode : UIDatePicker.Mode
        
        init(id : FormField,mode : UIDatePicker.Mode){
            self.mode = mode
            super.init(id)
        }
    }
    final class ButtonComponent : FormComponent {
        let title : String
        
        init(id : FormField,title : String){
            self.title = title
            super.init(id)
        }
    }
    
    
    


