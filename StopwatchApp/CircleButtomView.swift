//
//  CircleButtomView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 14/11/2022.
//

import SwiftUI

struct CircleButtomView: View {
    var body: some View {
        ZStack {
            
            //first layer
            Circle()
                .foregroundColor(.gray)
                .frame(width:100)
            
            //second layer
            Circle()
                .foregroundColor(.black)
                .frame(width:93)
            
            //third layer
            Circle()
                .foregroundColor(.gray)
                .frame(width:89)
            
            //forth layer
            Text("reset")
                .foregroundColor(.white)
                .font(.title2)
        }
    }
}

struct CircleButtomView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtomView()
    }
}
