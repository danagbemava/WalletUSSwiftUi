//
//  OnboardingView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 04/03/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var loginLinkIsActive: Bool = false
    
    @EnvironmentObject var appNavigationObserver: NavigationStateObserver
    
    var body: some View {
//        NavigationView {
            VStack {
                VStack {
                    Text("walletus")
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Be in control of your money")
                        .padding(.horizontal, 16)
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Spacer()
                
                Image("onboarding")
                    .resizable()
                    .frame(maxWidth: 300, maxHeight: 300, alignment: .center)
                    .padding()
                
                Spacer()
                
                VStack {
                    Button {} label: {
                        Text("Create new account")
                            .foregroundColor(.white)
                            .font(.body.bold())
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(ColorConstants.primaryBlue)
                    .cornerRadius(16)
                    
//                    NavigationLink(destination: LoginView(),isActive: $loginLinkIsActive ) {
                        Button {
//                            loginLinkIsActive.toggle()
                            appNavigationObserver.updateNavigationState(newState: .auth)
                        } label: {
                                Text("Sign In")
                                    .foregroundColor(.black)
                                    .font(.body.bold())
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                        .cornerRadius(16)
//                    }
                    
                }.padding(.horizontal, 16)
                
                Spacer()
            }.navigationBarHidden(true)
//        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
