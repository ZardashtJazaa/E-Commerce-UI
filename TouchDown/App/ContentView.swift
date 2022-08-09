//
//  ContentView.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properety
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        ZStack {
            
            if shop.selectedProduct == nil  && shop.showingProduct == false {
                VStack(spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing:0) {
                            PlayerView()
                                .frame(minHeight:256)
                                .padding(.vertical,10)
                            
                            //MARK: - Category
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, pinnedViews: []) {
                                
                                ForEach(products) { product in
                                        ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                feedBack.impactOccurred()
                                                shop.selectedProduct =  product
                                                shop.showingProduct  =  true
                                            }//Animation
                                        }//Gesture
                                }//:Loop
                            }//Grid
                            .padding(15)
                            
                            //MARK: - Brands
                            TitleView(title: "Brands")
                           BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        }//VStack
                    }//ScrollView
                }//:VStack
                .background(backgroundColor.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }//:ZStack
        .ignoresSafeArea(.all,edges: .top)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
