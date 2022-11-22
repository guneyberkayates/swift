//
//  ContentView.swift
//  InterchangableNewtwork
//
//  Created by Güney Berkay  on 16.09.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userListViewModel :
    UserListViewModel
    
    init() {
        self.userListViewModel = UserListViewModel(service: Webservice)
    }
    var body: some View {
        List(userListViewModel.userList,id:\.id) {
            user in
            VStack{
                Text(user.housesList.name)
                    .font(.title3)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(user.housesList.quality)
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(user.housesList.element)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(user.housesList.sign)
                Text(user.housesList.sign_num)
                Text(user.housesList.position)
                Text(user.housesList.abs_pos)
                Text(user.housesList.emoji)
                Text(user.housesList.point_type)
            }
            
        }.task {
          await userListViewModel.downloadUsers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
