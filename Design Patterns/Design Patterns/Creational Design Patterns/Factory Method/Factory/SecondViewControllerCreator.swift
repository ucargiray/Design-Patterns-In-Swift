//
//  SecondViewControllerCreator.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

class SecondViewControllerCreator : ViewControllerCreatorProtocol {
    
    func create() -> ViewControllerProtocol {
        return SecondViewController()
    }
    
}
