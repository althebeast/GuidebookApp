//
//  Attraction.swift
//  GuidebookApp
//
//  Created by Alperen Sarışan on 4.02.2024.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
