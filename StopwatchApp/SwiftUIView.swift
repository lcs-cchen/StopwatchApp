//
//  SwiftUIView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 16/11/2022.
//

import SwiftUI

struct Badge1: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text("9:22")
                .font(Font.system(size: 65, weight: .thin))
                .foregroundColor(.white)
                .padding(-5)
            Text("AM")
                .font(Font.system(size: 25))
                .foregroundColor(.white)
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Badge1()
    }
}
