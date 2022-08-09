//
//  TitleView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properety
    var title:String
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//:HStack
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}
//MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
