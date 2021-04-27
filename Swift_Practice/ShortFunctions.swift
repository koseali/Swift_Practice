//
//  ShortFunctions.swift
//  Swift_Practice
//
//  Created by Ali Köse on 17.04.2021.
//

import Foundation
// Find to first repetitive character and return character
public func solution( Metin : String) -> String {
var sozluk = [Character: Int]()
let count = 0
var encokgecenHarf : Character = "a"
for harf in Metin{
    if sozluk[harf] != nil {
        sozluk[harf]! +=  1
        encokgecenHarf = harf
        break
    }
    sozluk[harf] = count + 1
}
    return String(encokgecenHarf)
}
