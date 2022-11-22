//
//  MeditationView.swift
//  Meditation
//
//  Created by Güney Berkay  on 17.09.2022.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        VStack(spacing: 0){
            Image("image-flower")
                .resizable()
                .scaledToFit()
                .frame(height : UIScreen.main.bounds.height / 3)
            
            ZStack{
                Color(red: 24/255, green : 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24){
                    VStack(alignment: .leading, spacing: 8){
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    Text("1 minute relaxing meditation")
                        .font(.title)
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
