//
//  Move.swift
//  Project34
//
//  Created by slim on 2017/11/14.
//  Copyright © 2017 halloween-jack. All rights reserved.
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
}
