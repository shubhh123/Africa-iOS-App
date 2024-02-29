//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Shubham on 24/02/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

//to play the video automatically
func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil { //checks for a valid video file to be played
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
        
    }
    return videoPlayer!
}
