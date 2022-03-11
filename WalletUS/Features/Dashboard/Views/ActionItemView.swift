//
//  ActionItemView.swift
//  WalletUS
//
//  Created by Daniel Agbemava on 11/03/2022.
//

import SwiftUI

struct ActionItemView: View {
    
    let color: Color
    let title: String
    let icon: String
    var onPressed: () -> ()
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: icon)
                .foregroundColor(color)
            Spacer()
            Text(title)
                .foregroundColor(color)
                .clipped()
        }
        .padding()
        .frame(height: 80)
        .background(color.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .onTapGesture {
            onPressed()
        }
    }
}

struct ActionItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActionItemView(color: .blue, title: "Send", icon: "paperplane", onPressed: {})
    }
}
