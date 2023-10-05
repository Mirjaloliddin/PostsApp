//
//  ChatView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 10/04/23.
//

import SwiftUI

struct ChatView: View {
    
    @State private var names = ""
    
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                List(0..<5) { value in
                FirstView(section: ListView.init(name: "Ronald Robertson", comment: "An suas viderer pro. Vis cu magna altera, ex his vivendo atomorum.", image: Image("chat1"), time: "today"))
                        
                    FirstView(section: ListView.init(name: "Johny watson", comment: "my name is johy watson, i am programmer", image: Image("avatar"), time: "12.04.2022"))
                    
                }.listStyle(.inset)
                    
                
                    .navigationTitle("Chat")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("22 december, 2019")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        ToolbarItem(placement: .confirmationAction){
                            Button(action:{}){Image(systemName: "square.and.pencil")}
                        }
                        
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


struct FirstView: View {
    var section: ListView
    var body: some View {
        HStack(spacing: 10){
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 48, height: 48)
                
            VStack(alignment: .leading){
                HStack {
                    Text(section.name)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    Spacer()
                    Text(section.time)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 6, height: 10)
                        .foregroundColor(.gray)
                }
                Text(section.comment)
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
            }
          
        }
    }
}
struct ListView: Identifiable {
    let id = UUID()
    var name: String
    var comment: String
    var image: Image
    var time: String
    
}

