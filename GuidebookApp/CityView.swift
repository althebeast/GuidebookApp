//
//  ContentView.swift
//  GuidebookApp
//
//  Created by Alperen Sarışan on 4.02.2024.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(cities) { city in
                    Text(city.name)
                }
            }
        }
        .padding()
        .onAppear() {
            cities = dataService.getData()
        }
    }
}

#Preview {
    CityView()
}
