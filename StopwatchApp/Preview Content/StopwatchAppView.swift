//
//  StopwatchAppView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 18/11/2022.
//

import SwiftUI

struct StopwatchAppView: View {
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


struct StopwatchAppView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchAppView()
    }
}