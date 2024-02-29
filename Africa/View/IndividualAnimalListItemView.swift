//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Shubham on 20/02/24.
//

import SwiftUI

struct IndividualAnimalListItemView: View {
    
    let animal: Animal
    
    var body: some View {
            HStack(alignment: .center, spacing: 16) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.accent) //sets the accent color of the text
                    
                    Text(animal.headline)
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                } //: VSTACK
            } //: HSTACK
        
    }
}

//#Preview {
//    let animals: [Animal] = Bundle.main.decode("animal.json")
//    //AnimalListItemView(animal: animals[1])
//    AnimalListItemView(animal: animals[1])
//}

struct AnimalListItemView_Previws: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        IndividualAnimalListItemView(animal: animals[1])
    }
}