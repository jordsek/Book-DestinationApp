//
//  TitleModeifier.swift
//  Honeymoon
//
//  Created by Jordan Isac on 03/07/2023.
//

import SwiftUI

struct TitleModeifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
    
}

