//
//  FirstViewControllerCreator.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

class FirstViewControllerCreator : ViewControllerCreatorProtocol {
    
    func create() -> ViewControllerProtocol {
        return FirstViewController()
    }
    
    
}
