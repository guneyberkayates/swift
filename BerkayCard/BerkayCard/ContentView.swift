//
//  ContentView.swift
//  BerkayCard
//
//  Created by Güney Berkay  on 16.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                Text("Guney Berkay Ates")
                .font(Font.custom("Orbitron", size: 25))
                .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }}}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
