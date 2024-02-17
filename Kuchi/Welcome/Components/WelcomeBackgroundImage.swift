//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        
        Image("welcome-background")
            .resizable().aspectRatio(1 / 1, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .edgesIgnoringSafeArea(.all)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
