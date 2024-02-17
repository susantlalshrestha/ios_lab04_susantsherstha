//
//  LogoImage.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        ///Created logo using code
        ///Create an image that is resizble and doesnt need constraints
        Image(systemName: "table").resizable().frame(width: 30, height: 30).overlay( Circle().stroke(.gray, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
            .background(Color(white: 0.9))
            .clipShape(Circle()).foregroundColor(.red)
    }
}


struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
