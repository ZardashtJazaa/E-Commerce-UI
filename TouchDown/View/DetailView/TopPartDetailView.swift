//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct TopPartDetailView: View {
    
    //MARK: - Properety
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 6) {
            
            //Price
            VStack(alignment: .leading, spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                
                Text( shop.selectedProduct?.formatedPrice ?? sampleProduct.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
                
                
            }//VStack
            .offset(y: isAnimating ? -50 :  -75)
            Spacer()
            
            //Image
            Image( shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            
        }//:HStack
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                
                isAnimating.toggle()
            }
        }
    }
}

//MARK: - Preview

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
