//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Güney Berkay  on 14.09.2022.
//

import SwiftUI

struct SecondView: View {
    let selectedDog : Dog
    var body: some View {
       NavigationStack{
        Text(selectedDog.name)
       
            
        }}
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(selectedDog: dogs[0])
    }
}
