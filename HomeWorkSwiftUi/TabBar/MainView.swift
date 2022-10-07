//
//  MainView.swift
//  HomeWorkSwiftUi
//
//  Created by qwerty on 05.10.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "scroll")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "play")
                }
            VideoVIew()
                .tabItem {
                    Label("Video", systemImage: "play.tv.fill")
                }
            RecorderView()
                .tabItem {
                    Label("Recorder", systemImage: "mic")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
