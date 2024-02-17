//
//  WelcomeView.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            
            WelcomeMessageView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
