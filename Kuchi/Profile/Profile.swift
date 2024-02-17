//
//  Profile.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import Foundation

struct Profile: Codable {
    ///Profile of the learner using the app
    
    var name: String
    
    init() {
        self.name = ""
    }
    
    init(named name: String) {
        self.name = name
    }
}
