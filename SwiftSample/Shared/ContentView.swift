//
//  ContentView.swift
//  Shared
//
//  Created by Bethany Bellio on 9/13/21.
//

import SwiftUI
import IterableSDK

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: {
//                identifyUser(with: "testingsettinguppushswiftui@iterable.com")
                identifyUser(with: "testingpushswiftui2@iterable.com")
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    func identifyUser(with email: String) {
        IterableAPI.email = email
//        IterableAPI.updateUser([:], mergeNestedObjects: true) { data in
//            print("❗️\(String(describing: data))")
////            print(IterableConfig.autoPushRegistration)
//        } onFailure: { reason, data in
//            print("❗️ \(String(describing: reason)), \(String(describing: data))")
//        }

    }
    
}

struct User {
    let email: String
    let userID: String?
}

private let bethany = User(email: "bethany.bellio@iterable.com", userID: nil)
