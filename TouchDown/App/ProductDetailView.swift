//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properety
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            //Navbar
            NavbarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail  Top part
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail Bottom Part
            VStack(alignment: .center, spacing: 0) {
                
                //Rating  + Sizes
                RatingSizeComponentView()
                    .padding(.top,-25)
                    .padding(.bottom,10)
                // Descriptions
                ScrollView(.vertical, showsIndicators: false) {
                    Text( shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//:ScrollView
                
                //Quantity
                QuantityFavoritDetailView()
                    .padding(.vertical,10)
                    
                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom,10)
                Spacer()
            }//:VStack
            .padding(.horizontal,10)
            .background(
                Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top,-105)
            )
        }//VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all,edges: .all)
        
    }
}


//MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
           
    }
}
