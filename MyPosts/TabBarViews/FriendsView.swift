//
//  FriendsView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 10/04/23.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "person.3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 30)
                Text("Friends")
                    .fontWeight(.semibold)
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
