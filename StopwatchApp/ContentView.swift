//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 14/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // first layer (background)
            Color.yellow
                .ignoresSafeArea()
            
            // second layer (rest of interface
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
