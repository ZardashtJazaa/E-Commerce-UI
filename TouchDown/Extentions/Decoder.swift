//
//  Decoder.swift
//  TouchDown
//
//  Created by Zardasht on 8/7/22.
//

import Foundation

extension Bundle {
    
    func decode<T:Codable>(_ fileName: String ) -> T {
    
        guard let url = self.url(forResource: fileName, withExtension: nil) else {
            fatalError("Could't find the \(fileName) path!")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could't Get the Data!")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Could't decode the Data")
        }
        
        return loaded
    
    }
    
}
