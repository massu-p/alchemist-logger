//
//  ContentView.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/11/29.
//

import SwiftUI


struct ContentView: View {
    @State var version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")

    var body: some View {
        VStack {
            Text("あるけみロガー")
            Text(version as? String ?? "")
                .multilineTextAlignment(.trailing)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
