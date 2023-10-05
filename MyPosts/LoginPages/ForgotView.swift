//
//  ForgotView.swift
//  MyPosts
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 07/04/23.
//

import SwiftUI

struct ForgotView: View {

    @State var email = ""
    
    var body: some View {
        VStack {
            Text("Forgot password?")
                .fontWeight(.bold)
                .font(.system(size: 34))
                .padding(.top, 100)
            
            Text("Mel ea numquam efficiendi appellantur, eu vix reque inermis propriae, animal scaevola.")
                .multilineTextAlignment(.center)
                .font(.system(size: 17))
                .fontWeight(.regular)
                .foregroundColor(.gray .opacity(0.6))
                .padding(.top)
            
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .padding()
                .padding(.top, 40)
            
            Rectangle()
                .frame(maxWidth: UIScreen.main.bounds.width - 40, maxHeight: 1)
                .foregroundColor(.gray .opacity(0.5))
                .padding(.bottom)
            
            Spacer()
            
            Button(action: {
                //
            }){
                ZStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                        .cornerRadius(15)
                        .foregroundColor(.blue)
                    NavigationLink(destination:LoginView()){
                        Text("Create account")
                            .foregroundColor(.white)
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.bottom, 30)
            }
         
        }
        .navigationBarTitle("Password reset").navigationBarBackButtonHidden(false)
            
            
    }
}

struct ForgotView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotView()
    }
}
