//
//  RegisterView.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var userManager: UserManager
    
    @FocusState var nameFieldFocused: Bool

    @State private var isRegistered = false // Added state for navigation

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                WelcomeMessageView()
                
                TextField("Type your name...", text: $userManager.profile.name)
                    .focused($nameFieldFocused)
                    .submitLabel(.done)
                    .onSubmit(registerUser)
                    .bordered()
                
                HStack {
                    Spacer()
                    Text("\(userManager.profile.name.count)")
                        .font(.caption)
                        .foregroundColor(userManager.isUserNameValid() ? .green : .red)
                        .padding(.trailing)
                }
                .padding(.bottom)
                
                HStack {
                    Spacer()
                    
                    Toggle(isOn: $userManager.settings.rememberUser) {
                        Text("Remember me")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .fixedSize()
                }
                
                .navigationDestination(
                    isPresented: $isRegistered) {
                        DashboardView()
                    }
                
                Button(action: self.registerUser) {
                    HStack {
                        Image(systemName: "checkmark")
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                        Text("OK")
                            .font(.body)
                            .bold()
                    }
                }
                .bordered()
                .disabled(!userManager.isUserNameValid())
                
                Spacer()
            }
            .padding()
            .background(WelcomeBackgroundImage())
            .navigationBarTitle("Register") // Set navigation bar title
        }
    }
    
    func registerUser() {
        nameFieldFocused = false
        
        print("Hellow")
        
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }
        
        userManager.persistSettings()
        userManager.setRegistered()
        
        isRegistered = true // Activate the NavigationLink
    }
}

struct RegisterView_Previews: PreviewProvider {
  static let user = UserManager(name: "Mark")
  
  static var previews: some View {
    RegisterView()
      .environmentObject(user)
  }
}

