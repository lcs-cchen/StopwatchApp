//
//  GlobalTime.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 16/11/2022.
//

import SwiftUI

struct GlobalTime: View {
    let time : String
    let timeNum : String
    let location : String
    let dailyTime : String
    var body: some View {
    
        HStack {
            VStack(alignment:.leading) {
                Text(time)
                    .foregroundColor(Color("Light Grey"))
                    
                Text(location)
                    .font(.largeTitle)
                    .padding(.top, -8.0)
            }
            Spacer()
            
                HStack(alignment: .firstTextBaseline){
                    Text(timeNum)
                        .font(Font.system(size: 65, weight: .thin))
                        .foregroundColor(.white)
                        .padding(-5)
                    Text(dailyTime)
                        .font(Font.system(size: 25))
                        .foregroundColor(.white)
                }
            }
        .padding(.bottom,25)
        }
        }


struct GlobalTime_Previews: PreviewProvider {
    static var previews: some View {
        GlobalTime(time: "Today,-3HRS", timeNum: "9:22", location: "Vancover", dailyTime: "PM")
   
    }
}
