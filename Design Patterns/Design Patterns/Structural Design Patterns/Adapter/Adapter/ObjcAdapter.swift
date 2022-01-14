//
//  ObjcAdapter.swift
//  Design Patterns
//
//  Created by Giray UÇAR on 14.01.2022.
//

import Foundation

class ObjcAdapter : SelectorFunctionProtocol {
    
    var adaptee : SwiftAdaptee?
    
    init(adaptee : SwiftAdaptee) {
        self.adaptee = adaptee
    }
    
    func callSelectorFunction() {
        if let code = adaptee?.code , let adaptee = adaptee {
            adaptee.code = convertSwiftToObjcFor(given: code)
            print(adaptee.code!)
        }
    }
    
    func convertSwiftToObjcFor(given code : String) -> String {
        if !(code.hasPrefix("@objc")) {
            var codeTemp = code
            codeTemp.insert(contentsOf: "@objc ", at: code.startIndex)
            return codeTemp
        }
        else {
            return code
        }
    }
    
}
