//
//  Item.swift
//  Threads
//
//  Created by Shayan Ameen on 24/08/2024.
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
