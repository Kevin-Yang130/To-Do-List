//
//  To_Do_ListApp.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 8/29/24.
//

import FirebaseCore
import SwiftUI

@main
struct To_Do_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
