//
//  ContentView.swift
//  ChartaApi
//
//  Created by Güney Berkay  on 10.09.2022.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var natalVM = natalViewModel()

    var body: some View {
        NavigationView{
            List(natalVM.chart){
                element in
                Text(element.name)
                Text(element.housesList)
                Text(element.housesPositions)
                Text(element.planets)
                Text(element.positions)
                
            }
        }.navigationBarTitle(Text("Natal Chart"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
