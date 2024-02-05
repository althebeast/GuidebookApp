//
//  AttractionRow.swift
//  GuidebookApp
//
//  Created by Alperen Sarışan on 5.02.2024.
//

import SwiftUI

struct AttractionRow: View {
    
    var attraction: Attraction
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(attraction.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipShape(.rect(cornerRadius: 15))
            
            Text(attraction.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(attraction.summary)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    AttractionRow(attraction: Attraction(name: "Pantheon",
                                         summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                         longDescription: """
      The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
      """,
                                         imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798")
                           )
}
