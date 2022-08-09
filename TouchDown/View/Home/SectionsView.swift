//
//  SectionsView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct SectionsView: View {
    //MARK: - Properety
    @State var rotateClockWise: Bool
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }//:VStack
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(backgroundColor)
    }
}
