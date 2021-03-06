//
//  ContentView.swift
//  Shared
//
//  Created by Kavisha Sonaal on 13/04/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            Text("Hello")
                .toolbar(content: {
                    ToolbarItemGroup(placement: .bottomBar) {
                        HStack {
                            /// Referred https://stackoverflow.com/questions/65778208/accessibility-of-image-in-button-in-toolbaritem
                            /// https://www.hackingwithswift.com/plus/ultimate-portfolio-app/making-your-app-accessible
                            
                            /// With this enabled, VO reads the accessibilityLabel specified.
                            if UIAccessibility.isVoiceOverRunning {
                                Text("").accessibilityHidden(true)
                            }
                            
                            Button(action: {
                                //
                            }) {
                                Image(systemName: "folder.badge.plus")
                                    .padding()
                            }
                        }
                        .accessibilityElement()
                        .accessibilityLabel("Add meal category")
                        .accessibility(label: Text("Add meal category"))
                        .accessibility(addTraits: .isButton)
                    }
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
