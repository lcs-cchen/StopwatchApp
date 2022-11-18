//
//  AlarmView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 18/11/2022.
//

import SwiftUI

struct AlarmView: View {
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
            Text("Alarm")
                .font(.largeTitle)
                .bold()
                .padding(10)
            HStack{
                Image(systemName: "bed.double.fill")
                    .padding([.top, .leading, .bottom], 10)
                Text("Sleep | Wake Up")
                    .font(.title2)
            }
            HStack{
                VStack{
                    Text("No Alarm")
                        .font(Font.system(size: 50, weight: .thin))
                        .padding(.horizontal, 10)
                        .foregroundColor(Color("Light Grey"))
                    Text("Tommorow Morning")
                        .font(Font.system(size: 15, weight: .thin))
                        .padding(.leading, -50.0)
                    
                    }
                Spacer()
                Button(action: {
                    print("button")
                }, label: {
                    Text("CHANGE")
                        .foregroundColor(.orange)
                })
                .tint(Color("Light Grey"))
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .controlSize(.regular)

                }
            .padding(.bottom)
            Text("Other")
                 .font(Font.system(size: 20))
                 .padding(.leading, 10)
            AlarmTimeView(timeNum: "5:07", dailyTime: "AM")
                .padding(.top, -20)
                }
        }
    }


