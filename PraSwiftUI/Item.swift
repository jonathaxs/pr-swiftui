//
//  Item.swift
//  PraSwiftUI
//
//  Created by Jonathas Motta on 29/08/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
