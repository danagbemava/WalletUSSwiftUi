//
//  LoginView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 04/03/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Sign in to your account")
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
           
            
            VStack(alignment: .leading) {
                Section {
                    Text("E-mail address")
                        .foregroundColor(ColorConstants.customGrey)
                    TextField("E-mail", text: $emailAddress)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(8)
                        .keyboardType(.emailAddress)
                        .textContentType(.emailAddress)
                        
                        
                }
                
                
                Section {
                    Text("Password")
                        .foregroundColor(ColorConstants.customGrey)
                    
                        SecureField("Password", text: $password)
                            .padding()
                            .keyboardType(.default)
                            .textContentType(.password)
                    
                    
                }
            }.padding(.horizontal, 16)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
