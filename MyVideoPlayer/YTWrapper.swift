//
//  Player.swift
//  MyVideoPlayer
//
//  Created by Terence Wu on 1/5/2022.
//

import youtube_ios_player_helper
import SwiftUI

struct YTWrapper: UIViewRepresentable {
    var videoID: String
    
    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.delegate = context.coordinator
        return playerView
    }

    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        uiView.load(withVideoId: videoID, playerVars: ["controls": 1])
    }

    class Coordinator: NSObject, YTPlayerViewDelegate {
        func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
            playerView.playVideo()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}
