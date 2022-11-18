//
//  AppTitleView.swift
//  StopwatchApp
//
//  Created by Cyrus Chen on 18/11/2022.
//

import SwiftUI

struct AppTitleView: View {
    var body: some View {
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
    }
}

struct AppTitleView_Previews: PreviewProvider {
    static var previews: some View {
        AppTitleView()
    }
}
