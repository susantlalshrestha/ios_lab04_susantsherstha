//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/16/24.
//

import Foundation
import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    
    //MARK: - Apply a label style to a label
    func makeBody(configuration: Configuration) -> some View {
        HStack  {
            configuration.icon
            configuration.title
        }
    }
    
    
}
