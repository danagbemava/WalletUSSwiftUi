//
//  WalletUSApp.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 04/03/2022.
//

import SwiftUI

@main
struct WalletUSApp: App {
    
    @StateObject var appNavigationState: NavigationStateObserver = NavigationStateObserver()
    
    var body: some Scene {
        WindowGroup {
            
           
            switch appNavigationState.currentNavigationState {
                case .onboarding: ContentView().environmentObject(appNavigationState)
                case .auth: LoginView().environmentObject(appNavigationState)
                case .dashboard: BaseDashboardView()
                        .environmentObject(appNavigationState)
                        
            }
    
        }
    }
}
