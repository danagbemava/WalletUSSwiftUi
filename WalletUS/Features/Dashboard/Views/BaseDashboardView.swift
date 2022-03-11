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
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house")
                    }
                
                Text("Placeholder 2")
                    .tabItem {
                        Label("Spending", systemImage: "chart.bar")
                    }
                
                Text("Placeholder 3")
                    .tabItem {
                        Label("History", systemImage: "clock")
                    }
                
                Text("Placeholder 4")
                    .tabItem {
                        Label("Cards", systemImage: "creditcard")
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
