//
//  AppNavigationState.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 09/03/2022.
//

import Foundation

enum AppNavigationState {
    case dashboard, onboarding, auth
}


class NavigationStateObserver: ObservableObject {
    
    @Published var currentNavigationState: AppNavigationState = .onboarding
    
    func updateNavigationState(newState: AppNavigationState) {
        currentNavigationState = newState
    }
}
