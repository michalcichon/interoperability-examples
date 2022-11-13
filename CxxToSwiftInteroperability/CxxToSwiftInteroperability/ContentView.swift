//
//  ContentView.swift
//  CxxToSwiftInteroperability
//
//  Created by Michał Cichoń on 13/11/2022.
//

import SwiftUI
import CxxExample

struct ContentView: View {
    var body: some View {
        Text("CxxTest function result: \(cxxFunction(7))")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
