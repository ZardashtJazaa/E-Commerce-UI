//
//  QuantityFavoritDetailView.swift
//  TouchDown
//
//  Created by Zardasht on 8/9/22.
//

import SwiftUI

struct QuantityFavoritDetailView: View {
    //MARK: - Properety
    @State private var counter: Int = 0
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action:{
                if counter > 0 {
                    feedBack.impactOccurred()
                    counter -= 1
                }//IF
            },label: {
                Image(systemName: "minus.circle")
            })//:Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth:36)
            
            Button(action:{
                if counter < 100 {
                    feedBack.impactOccurred()
                    counter += 1
                }//IF
            },label: {
                Image(systemName: "plus.circle")
            })//:Button
            Spacer()
            
            Button(action:{
                feedBack.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })//:Button
        }//:HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - Preview
struct QuantityFavoritDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoritDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
