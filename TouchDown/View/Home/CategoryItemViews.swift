//
//  CategoryItemViews.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct CategoryItemViews: View {
   
    //MARK: - Properety
    let category: Category
    //MARK: - Body
    var body: some View {
        
        Button(action:{}, label: {
            
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                    
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    
                Spacer()
            }//:HStack
            .frame(width: 160,height: 45,alignment: .leading)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 1)
            )
            
        })//:Button
      
        
    }
}

//MARK: - Preview
struct CategoryItemViews_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemViews(category: categories[12])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
