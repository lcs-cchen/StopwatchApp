//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 14/11/2022.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        VStack(alignment: .leading){
            AppTitleView()
            List{
                Group{
                    GlobalTimeView(time: "Today,-3HRS", timeNum: "9:22", location: "Vancover", dailyTime: "PM")
                    GlobalTimeView(time: "Today, +0HRS", timeNum: "12:22", location: "Toronto", dailyTime: "PM")
                    GlobalTimeView(time: "Today, +13HRS", timeNum: "1:22", location: "Beijing", dailyTime: "AM")
                    GlobalTimeView(time: "Today, +12HRS", timeNum: "2:22", location: "Tokyo", dailyTime: "AM")
                    GlobalTimeView(time: "Today, +12HRS", timeNum: "4:22", location: "Sydney", dailyTime: "AM")
                }
            }
            .padding(.leading, -10.0)
        .listStyle(.plain)
        }
    }
    
}

struct ContentView2: View {
    var body: some View {
        StopwatchAppView()
    }
}
struct ContentView3: View {
    var body: some View {
        AlarmView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        TabView(selection: Binding.constant(3)){
            ContentView1()
                .tabItem{
                    Image(systemName: "globe")
                    Text("World Clock")
            
                }
            AlarmView()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            ContentView2()
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

