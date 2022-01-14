//
//  AdapterClientUseCase.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

class AdapterClientUseCase {

    func registerButtonClicked(use selector: SelectorFunctionProtocol) {
        selector.callSelectorFunction()
    }

}

protocol SelectorFunctionProtocol {
    func callSelectorFunction()
}


