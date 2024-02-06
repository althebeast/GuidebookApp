//
//  City.swift
//  GuidebookApp
//
//  Created by Alperen Sarışan on 4.02.2024.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
    
}
