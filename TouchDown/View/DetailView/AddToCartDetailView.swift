//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Zardasht on 8/9/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properety
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        
        Button(action: {
            feedBack.impactOccurred()
        }, label: {
            Spacer()
            Text("add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            
        })//Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

//MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
