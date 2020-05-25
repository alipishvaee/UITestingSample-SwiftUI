//
//  ContentView.swift
//  UITestingSample-SwiftUI
//
//  Created by Ali Pishvaee on 5/25/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .frame(height: 45, alignment: .center)
                .multilineTextAlignment(.center)
                .accessibility(identifier: "firstName")
            TextField("Last Name", text: $lastName)
                .frame(height: 45, alignment: .center)
            .multilineTextAlignment(.center)
            .accessibility(identifier: "lastName")
            Text("Your complete name is: \(firstName) \(lastName)")
            .accessibility(identifier: "completeName")
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
