//
//  ContentView.swift
//  MyVideoPlayer
//
//  Created by Terence Wu on 1/5/2022.
//

import youtube_ios_player_helper
import SwiftUI


struct ContentView: View {
    @State private var videoIDs: [String] = ["tewPegMVdTE", "-a7q-q7zKCg"]
    @State private var index: Int = 0

    var body: some View {
        VStack {
            YTWrapper(videoID: videoIDs[index])
                .frame(height: 250)
            Button("I'm Lucky") {
                index = (index + 1) % 2
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
