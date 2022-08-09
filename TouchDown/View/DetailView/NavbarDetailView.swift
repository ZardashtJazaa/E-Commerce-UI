//
//  NavbarDetailView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct NavbarDetailView: View {
    //MARK: - Properety
    @EnvironmentObject var shop: Shop //mean the enviroment of swiftUI will provide the value for us and also says that we can  modifies there Values..
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Button(action:{
                withAnimation(.easeIn(duration: 0.1)) {
                    feedBack.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }//Button Back
            
            Button(action:{
                feedBack.impactOccurred()
            }) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }//Button Cart
            
        }//: HStack
    }
}


//MARK: - Preview
struct NavbarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
