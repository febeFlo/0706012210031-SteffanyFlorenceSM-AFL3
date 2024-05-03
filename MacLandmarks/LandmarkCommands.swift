//
//  LandmarkCommands.swift
//  0706012210031-SteffanyFlorenceSM-AFL3
//
//  Created by MacBook Pro on 03/05/24.
//

import SwiftUI

struct LandmarkCommands: Commands {
    // track the currently selected landmark
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    var body: some Commands {
        SidebarCommands()
        
        // define the content menu
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" :  "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            // for automatically shows the keyboard shortcut in the menu
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

// read and write a custom property on the system-defined Focused Values structure
private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
