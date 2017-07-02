//
//  File.swift
//  StackImplementation
//
//  Created by Fnu, Rohit on 7/2/17.
//  Copyright © 2017 Fnu, Rohit. All rights reserved.
//

import Foundation

struct Stack {
    var array: [String] = []
    
    mutating func push(elemet:String) {
        array.append(elemet)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    mutating func peek() -> String? {
        return array.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let firstLine = "-------Stack-----\n"
        let lastLine = "\n-----------------\n"
        
        let elemenetsInStack = array.reversed().joined(separator: "\n")
        
        return firstLine + elemenetsInStack + lastLine
    }
}


