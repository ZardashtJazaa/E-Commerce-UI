//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct CategoryGridView: View {
   
    //MARK: - Body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(header: SectionsView(rotateClockWise: false), footer: SectionsView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                        CategoryItemViews(category: category)
                    }
                }
            }//:LazyGrid
            .frame(height:165)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            
        }//:ScrollView
    }
    
}


//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
