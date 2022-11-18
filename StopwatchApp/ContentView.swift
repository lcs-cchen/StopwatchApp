//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 14/11/2022.
//

import SwiftUI


struct ContentView: View {
    let badgeView1 = Text("00:00.10")
            .foregroundColor(.white)
            .font(.title3)
    let badgeView2 = Text("00:00.10")
            .foregroundColor(.red)
            .font(.title3)
    let badgeView3 = Text("00:00.10")
            .foregroundColor(.green)
            .font(.title3)
    let badgeView4 = Text("00:00.10")
            .foregroundColor(.white)
            .font(.title3)
    let badgeView5 = Text("00:00.10")
            .foregroundColor(.white)
            .font(.title3)
    
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
                    Circle()
                        .frame(width:10)
                    Circle()
                        .foregroundColor(Color("Dark Grey"))
                        .frame(width:10)
                        
                    Spacer()
                    CircleButtomView(buttonColor: Color("Dark Brown"), label: "start", labelColor: .white)
                }
                
                    
                    HStack{
                        List {
                            Group(){
                                Text("Lap 5")
                                    .badge(badgeView1)
                                    .font(.title3)
                                    .padding(.vertical, 15.0)
                                Text("Lap 4")
                                    .foregroundColor(.red)
                                    .badge(badgeView2)
                                    .font(.title3)
                                    .padding(.vertical, 15.0)
                                Text("Lap 3")
                                    .foregroundColor(.green)
                                    .badge(badgeView3)
                                    .font(.title3)
                                    .padding(.vertical, 15.0)
                                Text("Lap 2")
                                    .badge(badgeView4)
                                    .font(.title3)
                                    .padding(.vertical, 15.0)
                                Text("Lap 1")
                                    .badge(badgeView5)
                                    .font(.title3)
                                    .padding(.vertical, 15.0)
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                        }
                       
                    }
                    .frame(height: 300)
                .listStyle(.plain)
                
                }
            }
            .padding()
        }
    }
struct ContentView2: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Edit")
                    .foregroundColor(.orange)
                    .padding(10)
                Spacer()
                Image(systemName: "plus")
                    .foregroundColor(.orange)
                    .padding(10)
                
                
            }
            Text("World Clock")
                .font(.largeTitle)
                .bold()
                .padding(10)
            List{
                Group{
                    GlobalTime(time: "Today,-3HRS", timeNum: "9:22", location: "Vancover", dailyTime: "PM")
                    GlobalTime(time: "Today, +0HRS", timeNum: "12:22", location: "Toronto", dailyTime: "PM")
                    GlobalTime(time: "Today, +13HRS", timeNum: "1:22", location: "Beijing", dailyTime: "AM")
                    GlobalTime(time: "Today, +12HRS", timeNum: "2:22", location: "Tokyo", dailyTime: "AM")
                    GlobalTime(time: "Today, +12HRS", timeNum: "4:22", location: "Sydney", dailyTime: "AM")
                }
            }
            .padding(.leading, -10.0)
        .listStyle(.plain)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        TabView(selection: Binding.constant(3)){
            
            ContentView2()
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

