//
//  SwiftUIView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 12/04/23.
//

import SwiftUI

struct InitView: View {
    
    @State private var comments = ""
    @State var pushed: Bool = false
    
    var body: some View {
        NavigationView {
        ScrollView(.vertical) {
            VStack{
                Image("img")
                    .resizable()
                    .frame(width: 343, height: 274)
                HStack {
                    Text("\(Image(systemName: "eye.fill")) 8543")
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .padding(.horizontal, 25)
                    Spacer()
                    Text("342 \(Image(systemName: "bubble.right.fill"))")
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .padding()
                    Text("6472 \(Image(systemName: "heart.fill"))")
                        .padding(.trailing, 25)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                }
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray.opacity(0.6))
                
                VStack{
                    HStack {
                        Text("Comments")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.leading, 25)
                        Spacer()
                    }
                    ForEach(0..<6){ value in
                        CommentView()
                    }
                }
            }
            Spacer()
                
        }
        
        .toolbar(.hidden, for: .tabBar)
      
        .toolbar {
            ToolbarItemGroup (placement: .bottomBar) {
                HStack {
                    TextField("Write a comment", text: $comments)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Image(systemName: "paperplane")
                        .foregroundColor(.blue)
                        .frame(width: 32, height: 32)
                       
          }
        }
      }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading){
                Button(action: {
            
                    
                }){
                    NavigationLink(destination: HomeView()){
                        Text("\(Image(systemName: "chevron.backward"))Back")
                            .font(.system(size: 17))
                        
                    }
                }
                Spacer()
                Text("Hot air ballon")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 50)
                                
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    
                }){
                    Image(systemName: "ellipsis")
                }
               
            }
            
        }
    }.navigationBarBackButtonHidden(true)
            
  }
}
struct InitView_Previews: PreviewProvider {
    static var previews: some View {
        InitView()
    }
}

struct CommentView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(.leading, 25)
            VStack(alignment: .leading) {
                Text("Jorge Watson")
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                Text("2 hours ago")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                Text("Eum dicta fuisset phaedrum ei")
                    .padding(.top, 10)
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                Button(action: {}){ Text("reply")
                        .padding(.top, 2)
                }
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.gray.opacity(0.8))
            }
            Spacer()
        }
    }
}
