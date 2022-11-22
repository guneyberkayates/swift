//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Güney Berkay  on 6.09.2022.
//


import Foundation
import Alamofire

class JokesViewModel : ObservableObject{
    
    @Published var infos = [String?]()

   
    
    func getChart(name : String, year : Int , month : Int , day : Int , hour : Int , minute : Int ,city : String, country : String)
    {
        AF.request("http://127.0.0.1:5000/berkayschart/\(name)/\(year)/\(month)/\(day)/\(hour)/\(minute)/\(city)/\(country)/",method: .get).responseDecodable(of:natalChart.self) { response in
            
            switch response.result {
                case .success(let data):
                let value = [data.housesList,data.housesPositions,data.planets,data.positions]
                
                self.infos = value
                case .failure(let error):
                    print(error)
            }
        }
    }
}

