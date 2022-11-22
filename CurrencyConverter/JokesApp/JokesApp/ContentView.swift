//
//  ContentView.swift
//  JokesApp
//
//  Created by Güney Berkay  on 6.09.2022.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
       
        NavigationView {
            
            List(jokesVM.getChart(name: "berkay", year: 2002, month: 12, day: 04, hour: 5, minute: 55, city: "Tunceli", country: "Turkey"))
            { element in
                Text(element.self)
            }
           
            .navigationTitle("Jokes App")
            
        }
        
    }
    
  
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
