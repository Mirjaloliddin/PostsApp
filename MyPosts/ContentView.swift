//
//  ContentView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .systemGray6
        
       
       }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            
            ChatView()
                .tabItem{
                    Image(systemName: "paperplane")
                    Text("Chat")
                }
            
            FriendsView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    
                    Text("Friends")
                }
            
            StoriesView()
                .tabItem{
                    Image(systemName: "plus.circle")
                    Text("stories")
                    
                }
            
        }
      
        .navigationBarBackButtonHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
