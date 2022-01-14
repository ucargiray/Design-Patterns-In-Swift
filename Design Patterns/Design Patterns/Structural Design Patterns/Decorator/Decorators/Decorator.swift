//
//  Decorator.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 15.01.2022.
//

import Foundation

class Decorator: Sportsman {

    var sports: [Sportsman]?

    init(sports: [Sportsman]) {
        self.sports = sports
    }

    func doSport() {
        if let sportsmans = sports {
            for sportsman in sportsmans {
                sportsman.doSport()
            }
        }
    }
}
