//
//  Player.swift
//  Project34
//
//  Created by slim on 2017/11/13.
//  Copyright © 2017 halloween-jack. All rights reserved.
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {
    var chip: ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    var opponent: Player {
        if chip == .red {
            return Player.allPlayers[1]
        } else {
            return Player.allPlayers[0]
        }
    }
    
    static var allPlayers = [Player(chip: .red), Player(chip: .black)]
    
    init(chip: ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .red {
            self.color = .red
            self.name = "Red"
        } else {
            self.color = .black
            self.name = "Black"
        }
        
        super.init()
    }

}
