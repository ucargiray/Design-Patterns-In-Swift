//
//  AmateurSportsmanDecorator.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 15.01.2022.
//

import Foundation

class AmateurSportsmanDecorator : Decorator {
    
    override func doSport() {
        super.doSport()
        print("from the amateur sportsman")
    }
    
}
