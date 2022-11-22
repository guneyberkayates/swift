//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Güney Berkay  on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Section("Dogs"){
                    ForEach(dogs){
                        dog in
                        NavigationLink{
                            Text(dog.name)
                        } label: {
                            Text(dog.name)
                        }
                    }
                }
                Section("Cats"){
                    ForEach(cats){
                        cat in
                        NavigationLink{
                            Text(cat.name) 
                        }
                        label : {
                            Text(cat.name)
                        }
                    }
                 
                }
            }
       
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
            ContentView()
         
    }
}
