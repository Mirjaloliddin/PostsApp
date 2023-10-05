//
//  CreateView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 07/04/23.
//

import SwiftUI

struct CreateView: View {
    
    @State var name = ""
    @State var emailAdress = ""
    @State var passwords = ""
    @State var isTapped = false
 
    
    var body: some View {
        VStack{
            Group{
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 37, height: 44)
                    .padding(.top, 56)
                Text("Create account")
                    .fontWeight(.bold)
                    .font(.system(size: 34))
                    .frame(alignment: .center)
                    .padding()
                Text("Nec nihil affert partiendo ne, quo no lisque \n etlam tacimates sed conceptam.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(.gray .opacity(0.6))
                    .padding(.bottom)
                TextField("Name", text: $name)
                    .keyboardType(.default)
                    .padding()
                
                Rectangle()
                    .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                    .foregroundColor(.gray .opacity(0.5))
                    .padding(.bottom)
                
                TextField("Email", text: $emailAdress)
                    .keyboardType(.emailAddress)
                    .padding()
                
                Rectangle()
                    .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                    .foregroundColor(.gray .opacity(0.5))
                    .padding(.bottom)
                
                SecureField("Password", text: $passwords)
                    .padding()
                
                Rectangle()
                    .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                    .foregroundColor(.gray .opacity(0.5))
                    .padding(.bottom)
            }
            Group{
                HStack(spacing: 10){
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .multilineTextAlignment(.leading)
                        .frame(width: 16, height: 16, alignment: .leading)
                    
                    let part1 = Text("I agree with our ")
                    let part2 = Text("Terms")
                        .foregroundColor(.blue)
                    let part3 = Text(" and ")
                    let part4 = Text("Conditions")
                        .foregroundColor(.blue)
                    let wholePart = part1 + part2 + part3 + part4
                    Text("\(wholePart)")
                        .font(.system(size: 13))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 64, alignment: .leading)
                        .onTapGesture {
                            isTapped.toggle()
                        }
                    
                }.padding(.top)
                
                Button(action: {
                    //
                }){
                    ZStack {
                        
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                                .cornerRadius(15)
                                .foregroundColor(.blue)
                        NavigationLink(destination: ContentView()) {
                            Text("Create account")
                                .foregroundColor(.white)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                    }.padding(.top, 70)
                        
                }
                HStack{
                    Text("Already Have An Account ?")
                        .fontWeight(.medium)
                        .font(.system(size: 14))
                        .foregroundColor(.gray.opacity(0.6))
                        .padding(.top)
                    Button(action: {
                        
                    }){
                        NavigationLink( destination: LoginView()){
                            Text("Sign In")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                                
                                .padding(.top)
                        }
                    }
                }
            }
       Spacer()
            
        } .navigationBarBackButtonHidden()

    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
