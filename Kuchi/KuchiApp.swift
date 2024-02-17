//
//  KuchiApp.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import SwiftUI

@main
struct KuchiApp: App {
    
    let userManager = UserManager()
    
    init() {
        userManager.load()
    }
    
    var body: some Scene {
        WindowGroup {
            RegisterView().environmentObject(userManager)
        }
    }
}
