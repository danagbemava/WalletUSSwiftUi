//
//  OnboardingView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 04/03/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                VStack {
                    Text("walletus")
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Be in control of your money")
                        .padding()
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                
                Image("onboarding")
                    .resizable()
                    .frame(maxWidth: 300, maxHeight: 400, alignment: .center)
                    .padding()

                
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
                    
                    Button {} label: {
                            Text("Sign In")
                                .foregroundColor(.black)
                                .font(.body.bold())
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 20)
                        .cornerRadius(16)
                    
                }.padding(.horizontal, 16)
                
                Spacer()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
