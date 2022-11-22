//
//  UserViewModel.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 20.09.2022.
//

import Foundation


class UserViewModel{
    

    private let userService : UserService
    weak var output : UserViewModelProtocol?
    
    init(userService : UserService){
        self.userService = userService
    }
   
    
    func fetchUsers(){
        
        userService.fetchUser(name: TextFormComponent., birthdate:  date.getFormattedDate(format: DateComponent.date) , city: TextFormComponent.city.text , country: TextFormComponent.country.text, completion: <#(Result<User, Error>) -> Void#>)
        { [weak self] result in
            
            switch result {
            case .success(let user):
                self?.output?.updateView(housesList: user.firstHouse, planets: user.sun)
            case .failure(_):
                self?.output?.updateView(housesList:" user.housesList.name", planets: "user.planets.name")

            }
        }
        
    }
}
let date = Date()
let format = date.getFormattedDate(format: "yyyy/MM/dd/HH/mm") // Set output format

extension Date {
    func getFormattedDate(format: FormField.RawValue) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
