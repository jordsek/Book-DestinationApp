//
//  HoneymoonModel.swift
//  Honeymoon
//
//  Created by Jordan Isac on 29/06/2023.
//

import SwiftUI

struct Destination: Identifiable {
    let id = UUID()
    var place: String
    var country: String
    var image: String 
}
