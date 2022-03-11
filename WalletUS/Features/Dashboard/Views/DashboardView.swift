//
//  DashboardView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 11/03/2022.
//

import SwiftUI

struct DashboardView: View {
    
    var tempData = ["One", "Two", "Three", "Four"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading,  spacing: 20) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Dean Li")
                                .font(.title3.bold())
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .onTapGesture {
                                    print("Tapped")
                                }
                        }
                        Spacer()
                            .frame(height: 20)
                        
                        Text("02123123123123")
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("BALANCE")
                            .foregroundColor(.gray)
                        
                        Text("$400")
                            .font(.title.bold())
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
                .frame(height: 200)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
                Spacer()
                    .frame(height: 20)
                
                HStack(spacing: 20) {
                    ActionItemView(color: .blue, title: "Send", icon: "paperplane")
                    
                    ActionItemView(color: .purple, title: "Bills", icon: "bolt.horizontal.fill")
                    
                    ActionItemView(color: .yellow, title: "Exchange", icon: "eurosign.circle.fill")
                    
                    ActionItemView(color: .gray, title: "Some", icon: "globe.europe.africa.fill")
                }
                
                Spacer()
                    .frame(height: 20)
                
                Text("Recent Transactions")
                    .font(.title2.bold())
                
                //                    List {
                
                // TODO: replace Text with actual transaction view item
                ForEach(tempData, id: \.self) {
                    Text($0)
                        .padding()
                        .scaledToFill()
                    
                }
                
                //                    }.scaledToFill()
                
                Spacer()
                
            }.padding()
        }
    }
    
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "paperplane")
            Spacer()
            Text("Send")
        }
        .padding()
        .frame(height: 80)
        .background(.blue.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
