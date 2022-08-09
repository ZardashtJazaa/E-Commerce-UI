//
//  BrandsItemView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct BrandsItemView: View {
    
    //MARK: - Properety
    let brand: Brand
    //MARK: - Body
    var body: some View {
        
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1)
            )
    }
}

//MARK: - Preview
struct BrandsItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsItemView(brand: Brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
