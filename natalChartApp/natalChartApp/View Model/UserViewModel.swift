//
//  UserViewModel.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import Foundation


class UserViewModel{
    
    private let userService : UserService
    weak var output : UserViewModelProtocol?
    
    init(userService : UserService){
        self.userService = userService
    }
    
    func fetchUsers(){
        
        userService.fetchUser(name: "", birthdate: "", time: "", city: "", country: ""
        ){ [weak self] result in
            
            switch result {
            case .success(let user):
                self?.output?.updateView(housesList: user.firstHouse, planets: user.sun)
            case .failure(_):
                self?.output?.updateView(housesList:" user.housesList.name", planets: "user.planets.name")

            }
        }
        
    }
}
