//
//  FooterView.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct FooterView: View {
    //MARK: - Properety
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable pices.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Zardasht Jaza\nAll right reserved")
                .fontWeight(.bold)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(1)
                
            
        }//:VStack
        .padding()
    }
}
//MARK: - Preview

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(backgroundColor)
    }
}
