//
//  Array.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import Foundation


extension Array {
    func firstThree() -> ArraySlice<Element> {
        return prefix(3)
    }
}
