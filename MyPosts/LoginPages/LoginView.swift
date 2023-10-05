//
//  LoginView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 06/04/23.
//

import SwiftUI

struct LoginView: View {
 
    @State var email = ""
    @State var password = ""

    
    var body: some View {
        NavigationView {
            VStack{
               
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 37, height: 44)
                    
                
                Text("Login")
                    .font(.system(size: 34 ))
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: 340)
                    .padding()
                
                Text("Welcome back \n sign in to continue etiam tacimates sed ad")
                
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray .opacity(0.5))
                    .font(.title3)
                    .padding(.bottom)
                
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                
                Rectangle()
                    .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                    .foregroundColor(.gray .opacity(0.5))
                    .padding(.bottom)
                
                
                    ZStack {
                        HStack {
                            SecureField("Password", text: $password)
                                .padding()
                            
                            do {
                                NavigationLink( destination: ForgotView()){
                                Text("Forgot password")
                                    .fontWeight(.semibold)
                                    .padding()
                            }
                                
                        }
                    }
                }
                
                Rectangle()
                    .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                    .foregroundColor(.gray .opacity(0.5))
                
                Button(action: {
                    
                }){
                    NavigationLink(destination: ContentView()){
                    ZStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: 60, alignment: .center)
                            .cornerRadius(15)
                            .foregroundColor(.blue)
                        
                            Text("Sign In")
                                .foregroundColor(.white)
                                .font(.headline)
                                .fontWeight(.bold)
                                
                        }
                    }
                    
                }
                .padding(.top, 50)

                HStack{
                    Text("Don't Have An Account ?")
                        .fontWeight(.medium)
                        .font(.system(size: 14))
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top)
                    Button(action: {
                        
                    }){
                        NavigationLink( destination: CreateView()){
                            Text("Create account")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                            
                                .padding(.top)
                        }
                        
                    }
                    
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
