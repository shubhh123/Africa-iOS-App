//
//  IndividualVideoListItem.swift
//  Africa
//
//  Created by Shubham on 23/02/24.
//

import SwiftUI

struct IndividualVideoListItemView: View {
    
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail) //Image("video-\(video.id)")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 9))
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: ZSTACK
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: VSTACK
        }//: HSTACK
    }
}

//#Preview {
//    IndividualVideoListItem()
//}

struct IndividualVideoListItem_Preview: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        IndividualVideoListItemView(video: videos[0])
    }
}
