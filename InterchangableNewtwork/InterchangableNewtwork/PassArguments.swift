//
//  PassArguments.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 17.09.2022.
//

import SwiftUI

struct PassArgument: View {
    @ObservedObject var name: Model = Model.shared

    @ObservedObject var name_ : String
    @ObservedObject  var birthdate_ = ""
    @ObservedObject var time_ = ""
    @ObservedObject var city_ = ""
    @ObservedObject var country_ = ""

    var body: some View {
        NavigationView{
        Form{
            Section(header: Text("Birth Information")) {
            TextField("Name", text: $name_)
            TextField("Date", text: $birthdate_)
            TextField("Time", text: $time_)
            TextField("City",text: $city_)
            TextField("Country",text: $country_)
                
            }
            
        }
        .navigationTitle("User Input")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarTrailing){
                Button("Analyze"){
                    print("tapped")
                } 
           
            }
        }
        
    }
        .accentColor(.red)
    }


struct PassArguments_Previews: PreviewProvider {
    static var previews: some View {
        PassArgument()
    }
}
}
