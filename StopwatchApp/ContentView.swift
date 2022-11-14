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
            Color.black
                .ignoresSafeArea()
            
            // second layer (rest of interface
            VStack {
                Text("00:00.00")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // create a circular button
               CircleButtomView()
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
