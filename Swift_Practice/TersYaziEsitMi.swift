//
//  TersYaziEsitMi.swift
//  Swift_Practice
//
//  Created by Ali Köse on 27.04.2021.
//

import Foundation
// Girilen string tersten de aynıysa tru bas

func TersYaziEsitMi(yazi : String) -> Bool{
    var yaziListesi = [Character]()
    for karakter in yazi {
        yaziListesi.append(karakter)
    }
    var tersYazi = ""
    for index in stride(from: yaziListesi.count-1, through: 0, by: -1){
        tersYazi += String(yaziListesi[index])
    }
    if tersYazi == yazi{
        return true
    }
    return false
}
