//
//  CircleButtomView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 14/11/2022.
//

import SwiftUI

struct CircleButtomView: View {
    
    //MARK: Stored Propreties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    //MARK: Computed Propreties
    
    //Returns the button's user interface
    var body: some View {
        ZStack {
            //first layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width:100)
            
            //second layer
            Circle()
                .foregroundColor(.black)
                .frame(width:93)
            
            //third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width:89)
            
            //forth layer
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

struct CircleButtomView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtomView(buttonColor: .gray, label: "reset", labelColor: .white)
    }
}
