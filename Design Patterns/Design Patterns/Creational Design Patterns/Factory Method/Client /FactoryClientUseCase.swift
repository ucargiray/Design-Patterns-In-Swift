//
//  FactoryClientUseCase.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

class FactoryClientUseCase {
    
    var viewControllerCreator : ViewControllerCreatorProtocol?
    
    init(viewControllerCreator : ViewControllerCreatorProtocol) {
        self.viewControllerCreator = viewControllerCreator
    }
    
    func configureViewController() {
        let vc = viewControllerCreator?.create()
        vc?.viewDidLoad()
    }
}
