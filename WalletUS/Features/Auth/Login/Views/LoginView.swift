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
    
    @State private var loginButtonActive: Bool = false
    
    var body: some View {
//        NavigationView {
            VStack (alignment: .center) {
                Text("Sign in to your account")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
               Spacer()
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("E-mail address")
                            .foregroundColor(ColorConstants.customGrey)
                        
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(ColorConstants.primaryBlue)
                            
                            TextField("E-mail", text: $emailAddress)
                                .keyboardType(.emailAddress)
                            .textContentType(.emailAddress)
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(ColorConstants.customGrey, lineWidth: 1))
                            
                            
                    }.padding(.vertical, 16)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Password")
                            .foregroundColor(ColorConstants.customGrey)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(ColorConstants.primaryBlue)
                            
                            SecureField("Password", text: $password)
                                .keyboardType(.default)
                                .textContentType(.password)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(ColorConstants.customGrey, lineWidth: 1))
                        
                        
                    }.padding(.vertical, 16)
                    
                    Text("Forgot Password?")
                        .padding()
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    NavigationLink(destination: BaseDashboardView(), isActive: $loginButtonActive) {
                        Button {
                            loginButtonActive = true
                        } label: {
                            Text("Sign in")
                                .font(.body.bold())
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(ColorConstants.primaryBlue)
                        .foregroundColor(.white)
                    .cornerRadius(16)
                    }
                    
                    
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                
                Spacer()
                
                VStack {
                    Text("Tap to use Face ID")
                        .font(.title3.bold())
                        .padding()
                    
                    
                    ZStack {
                        Circle()
                            .foregroundColor(ColorConstants.primaryBlue).opacity(0.05)
                            .frame(width: 160, height: 160)
                        
                        Circle()
                            .foregroundColor(ColorConstants.primaryBlue).opacity(0.05)
                            .frame(width: 120, height: 120)
                        
                        Circle()
                            .foregroundColor(ColorConstants.primaryBlue).opacity(0.1)
                            .frame(width: 80, height: 80)
                        Image(systemName: "faceid")
                            .font(.system(size: 36))
                        .foregroundColor(ColorConstants.primaryBlue)
                    }
                        
                        
                }.padding()
                Spacer()
            }.navigationBarHidden(true)
//        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
