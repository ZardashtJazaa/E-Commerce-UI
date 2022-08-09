//
//  PlayerView.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

struct PlayerView: View {
    //MARK: - Properety
    
    //MARK: - Body
    var body: some View {
        
        TabView {
            ForEach(players) { item in
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }//Loop
        }//Tabview
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
   }
}

//MARK: - Preview
struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .padding()
            .background(Color.gray)
    }
}
