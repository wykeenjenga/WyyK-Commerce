//
//  WyyK_CommerceApp.swift
//  WyyK Commerce
//
//  Created by Wykee Njenga on 4/2/22.
//

import SwiftUI

@main
struct WyyK_CommerceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())//allows data 
        }
    }
}
