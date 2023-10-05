//
//  TabView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 06/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search = ""
    

        
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                
                
                ScrollView(.vertical) {
                    VStack {
                        TextField("\(Image(systemName: "magnifyingglass"))Search", text: $search)
                            .padding(.all, 10)
                            .background(Color.gray .opacity(0.4))
                            .cornerRadius(12)
                            .padding(.horizontal, 16)
                            .padding(.vertical)
                        
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            
                            ForEach(0..<5) { value in
                                NavigationLink(destination: InitView()){
                                    ImageScrollView()
                                    
                                }
                            }
                            
                            .padding()
                        }
                    }
                    
                    Text("Other Posts")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(.trailing, 230)
                        .padding(.top)
                        
                    
                    ScrollView(.vertical) {
                        
                        
                        VStack{
                            HStack{
                                Image("avatar1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                VStack{
                                    Text("Cameron Stevard")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 15))
                                        .frame(width: 200, alignment: .leading)
                                    Text("2 hours ago")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                        .frame(width: 200, alignment: .leading)
                                }
                                Button(action: {
                                    
                                }){
                                    Text("Follow")
                                    
                                        .padding()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color.blue))
                                    
                                    
                                }
                            }
                            Text("#architecture, #relax")
                                .foregroundColor(.blue)
                                .fontWeight(.regular)
                                .padding(.trailing, 170)
                                .padding(.bottom)
                            Text("Sed affert delenit ea. Nam at ferri facete inermis. Eum dicta fuisset phaedrum ei, et amet iuvaret vituperatoribus vix.")
                                .font(.system(size: 15))
                                .fontWeight(.regular)
                            
                            HStack{
                                Image("past")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 148, height: 148)
                                    .padding()
                                Image("past")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 148, height: 148)
                            }
                        }   .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.gray))
                    }
                }
            }
            .navigationTitle("My Posts")
           
                .background(ignoresSafeAreaEdges: .top)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}){ Image(systemName: "plus")}
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 34, height: 34)
                            .clipShape(Circle())
                    }
                    
               
                }
                
                
                .toolbar(.visible, for: .tabBar)
        }
        .navigationBarBackButtonHidden()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ImageScrollView: View {
    var body: some View {
        HStack{
            ZStack{
                Image("12")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 160)
                    .cornerRadius(12)
                VStack{
                    Text("6473\(Image(systemName: "heart"))")
                        .foregroundColor(.white)
                        .fontWeight(.regular)
                        .font(.system(size: 13))
                        .offset(x: 50, y: -45)
                    
                    Text("Hot Air Ballon")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .offset(x:-20, y:50 )
                }
                
            }
        }
    }
}
