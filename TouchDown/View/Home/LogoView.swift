//
//  LogoView.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct LogoView: View {
    //MARK: - Properety
    
    //MARK: - Body
    var body: some View {
        HStack {
            
            Text("Touch")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        }//:HStack
    }
}
//MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
