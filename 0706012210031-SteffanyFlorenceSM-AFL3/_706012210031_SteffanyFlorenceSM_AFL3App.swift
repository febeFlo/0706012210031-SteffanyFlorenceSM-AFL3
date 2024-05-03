//
//  _706012210031_SteffanyFlorenceSM_AFL3App.swift
//  0706012210031-SteffanyFlorenceSM-AFL3
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

@main
struct _706012210031_SteffanyFlorenceSM_AFL3App: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
