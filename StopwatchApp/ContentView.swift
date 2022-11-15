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
                Spacer()
                Text("00:00.00")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // create a circular button
                HStack {
                    CircleButtomView(buttonColor: Color("Dark Grey"), label: "reset", labelColor: .white)
                    Spacer()
                    CircleButtomView(buttonColor: Color("Dark Brown"), label: "start", labelColor: .white)
                }
                
                
                List {
                    Group{
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(height: 300)
                .listStyle(.plain)
                }
            }
            .padding()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        TabView(selection: Binding.constant(3)){
            
            Text("World Clock")
                .tabItem{
                    Image(systemName: "globe")
                    Text("World Clock")
            
                }
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
            Text("Timer")
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
        }
    }

