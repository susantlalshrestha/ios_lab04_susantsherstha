//
//  UserManager.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import Foundation

final class UserManager: ObservableObject {
    
    @Published
    var profile: Profile = Profile()
    
    @Published
    var settings: Settings = Settings()
    
    @Published
    var isRegistered: Bool
    
    init() {
        isRegistered = false
    }
    
    init(name: String) {
        isRegistered = name.isEmpty == false
        self.profile.name = name
    }
    
    func setRegistered() {
        isRegistered = profile.name.isEmpty == false
    }
    
    func persistProfile() {
        //MARK: - Store profile to user defaults
        if settings.rememberUser {
            UserDefaults.standard.set(try?
                                      PropertyListEncoder().encode(profile), forKey: "user-profile")
        }
    }
    
    func persistSettings() {
        //MARK: - Store settings to user defaults
        UserDefaults.standard.set(try?
                                  PropertyListEncoder().encode(settings), forKey: "user-settings")
    }
    
    func load() {
        //MARK: - Load the user profile using user defaults
        if let data =
            UserDefaults.standard.value(forKey: "user-profile") as? Data {
            if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
                self.profile = profile
            }
        }
        setRegistered()
        
        //Load settings
        if let data =
            UserDefaults.standard
            .value(forKey: "user-settings")
            as? Data {
            if let settings = try?
                PropertyListDecoder()
                .decode(Settings.self, from: data) {
                self.settings = settings
            }
        }
    }
    
    func clear() {
        //Clear the user profile
        UserDefaults.standard.removeObject(forKey: "user-profile")
    }
    
    func isUserNameValid() -> Bool {
        //If profile name is above 3 characters
        return profile.name.count >= 3
    }
    
}
