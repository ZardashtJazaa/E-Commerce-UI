//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
