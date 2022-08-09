//
//  RatingSizeComponentView.swift
//  TouchDown
//
//  Created by Zardasht on 8/8/22.
//

import SwiftUI

struct RatingSizeComponentView: View {
    
    //MARK: - Properety
    let itemSize = ["XS" , "S" ,  "M" , "L" , "XL"]
    @State private var StarColor: Bool =  false
    //MARK: - Body
    var body: some View {
        
        HStack(alignment: .top, spacing: 3) {
            //Rating
            VStack(alignment: .leading, spacing: 3) {
                
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3){
                    ForEach(1...5 , id: \.self) { star in
                        Button(action:{
                            //Some actions
                        }) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(StarColor ? ColorGold : .white)
                                .onTapGesture {
                                    StarColor.toggle()
                                }
                        }//:Button
                    }//:Loop
                }//:HStack
                
            }//:VStack
            Spacer()
            
            //Size
            VStack(alignment: .trailing, spacing: 3) {
                Text("Size")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(itemSize, id: \.self) { size in
                        Button(action:{
                            //SomeActions
                        }) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray,lineWidth: 2)
                                )
                        }//:Button
                    }//:Loop
                }//:HStack
            }//:VStack
        }//:HStack
    }
}

//MARK: - Preview
struct RatingSizeComponentView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizeComponentView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
