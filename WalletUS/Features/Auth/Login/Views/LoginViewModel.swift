//
//  LoginViewModel.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 08/03/2022.
//

import Foundation


class LoginViewModel : ObservableObject {
        
    
    func doSomeDelay(onSuccess: () -> Void) {
        print("purposeful for testing")
        
        onSuccess()
    }
}
