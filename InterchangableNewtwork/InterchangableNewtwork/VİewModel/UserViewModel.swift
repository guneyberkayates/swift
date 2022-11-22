//
//  UserViewModel.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 16.09.2022.
//

import Foundation


class UserListViewModel : ObservableObject{
 @Published var userList = [UserViewModel]()

    private var service : Networkservice
    init(service : Networkservice){
        self.service = service
    }
    public var passed : String
    init(passed : String){
        self.passed = PassArgument.init(name_: "berkay", birthdate_: "12/04/2002", time_: "5/55", city_: "Tunceli", country_: "Turkey")
    }
   
    
    func downloadUsers() async {
        
        var resource = "http://127.0.0.1:5000/berkayschart/\(name)/\(String(PassArgument.birthdate_))/\(String(PassArgument.time_))/\(String(PassArgument.city_))/\(String(PassArgument.country_))"
        
       
        
        
        do {
            let users = try await service.download(resource)
            DispatchQueue.main.async {
                self.userList = users.map(UserViewModel.init)
            }
        }
        catch {
            print("error")
        }
    }

}
struct UserViewModel {
    
    let user :  User
    
    var housesList_name : String {
        user.housesList.name
    }
    var housesList_quality : String {
        user.housesList.quality
    }
    var housesList_element : String {
        user.housesList.element
    }
    var housesList_sign : String {
        user.housesList.sign
    }
    var housesList_signnum : String {
        user.housesList.sign_num
    }
    var housesList_position : String {
        user.housesList.position
    }
    var housesList_abspos : String {
        user.housesList.abs_pos
    }
    var housesList_emoji : String {
        user.housesList.emoji
    }
    var housesList_pointtype : String {
        user.housesList.point_type
    }
    var planets_name : String {
        user.planets.name
    }
    var planets_quality : String {
        user.planets.quality
    }
    var planets_element : String {
        user.planets.element
    }
    var planets_sign : String {
        user.planets.sign
    }
    var planets_signnum : String {
        user.planets.sign_num
    }
    var planets_position : String {
        user.planets.position
    }
    var planets_abspos : String {
        user.planets.abs_pos
    }
    var planets_emoji : String {
        user.planets.emoji
    }
    var planets_pointtype : String {
        user.planets.point_type
    }
    var planets_house : String {
        user.planets.house
    }
    var planets_retrograde : String {
        user.planets.retrograde
    }
    
    
    var name : String {
        user.positions
    }
   
   
    
}
