//
//  ContentView.swift
//  Africa
//
//  Created by Shubham on 19/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 265) //300
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)) // TO GET RID OF PADDING
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
                
            }//: LIST
            .navigationTitle("Africa")
        } //: NAVIGATION
    }
}

#Preview("ContentView") {
    ContentView()
}
