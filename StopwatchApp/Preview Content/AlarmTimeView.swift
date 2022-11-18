//
//  AlarmTimeView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 18/11/2022.
//

import SwiftUI

struct AlarmTimeView: View {
    let timeNum : String
    let dailyTime: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text(timeNum)
                .font(Font.system(size: 65, weight: .thin))
                .foregroundColor(.white)
                .padding(-5)
            Text(dailyTime)
                .font(Font.system(size: 25))
                .foregroundColor(.white)
            
        }
        .padding(10)
        
    }
}

struct AlarmTimeView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmTimeView(timeNum: "5:07", dailyTime: "AM")
    }
}
