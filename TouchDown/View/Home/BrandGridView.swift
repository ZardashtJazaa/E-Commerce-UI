//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct BrandGridView: View {
    
    //MARK: - Body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                ForEach(Brands) { brand in
                    BrandsItemView(brand: brand)
                }//:Loop
                
            }//:Grid
            .frame(height:200)
            .padding(15)
        }//Scroll
    }
}
//MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .padding()
            .background(backgroundColor)
    }
}
