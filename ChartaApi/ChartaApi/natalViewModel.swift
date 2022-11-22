//
//  natalViewModel.swift
//  ChartaApi
//
//  Created by Güney Berkay  on 10.09.2022.
//

import Foundation
import Alamofire

class natalViewModel : ObservableObject {
    @Published var chart = [WelcomeElement]()
    
    init(){
        getChart(name: "guney", year: 1995, month: 10, day:23 , hour: 4, minute: 43, city: "Trabzon", country: "Turkey")
    }
    
    func getChart(name : String,year:Int,month:Int,day:Int,hour:Int,minute:Int,city:String,country:String){
        AF.request("http://127.0.0.1:5000/berkayschart/\(name)/\(year)/\(month)/\(day)/\(hour)/\(minute)/\(city)/\(country)",method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
            case .success(let data):
                let value = data.self
                self.chart += value
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
