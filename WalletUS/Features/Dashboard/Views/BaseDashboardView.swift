//
//  BaseDashboardView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 04/03/2022.
//

import SwiftUI

struct BaseDashboardView: View {
    var body: some View {
        NavigationView {
            
            TabView {
                Text("Placeholder 1")
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                Text("Placeholder 2")
                    .tabItem {
                        Image(systemName: "chart.bar")
                    }
                
                Text("Placeholder 3")
                    .tabItem {
                        Image(systemName: "clock")
                    }
                
                Text("Placeholder 4")
                    .tabItem {
                        Image(systemName: "creditcard")
                    }
                
            }.navigationBarHidden(true)
        }
    }
}

struct BaseDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        BaseDashboardView()
    }
}
