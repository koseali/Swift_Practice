//
//  File.swift
//  Swift_Practice
//
//  Created by Ali Köse on 17.04.2021.
//

import Foundation
func DecimalToBinary(N : Int) -> String{
    var sayi = N
    var kalanList = [Int]()
    while sayi != 1{
        if sayi % 2 == 0{
            sayi = sayi / 2
            kalanList.append(0)
            if sayi == 1 {
                kalanList.append(1)
                break
            }
        }
        else {
            sayi = sayi / 2
            kalanList.append(1)
            if sayi == 1 {
                kalanList.append(1)
                break
            }
        }
        // sayiyi bulduk binary listede
    }
    // listedeki degerleri tersten stringe koyma
    var binary : String = ""
    var count = kalanList.count - 1
    while count != 0{
        binary += String(kalanList[count])
        count -= 1
        if count == 0{
            binary += String(kalanList[count])
            break
        }
    }
      // 1- -1 arası maks sıfır sayısı bulma
    var flag = false
    var boslukSayisi = 0
    var boslukListesi = [Int]()

    for i in binary{
        if i == "1" { flag = true
            if flag == true && boslukSayisi != 0 {
                boslukListesi.append(boslukSayisi)
                boslukSayisi = 0}
                }
        if flag == true && i == "0"{ boslukSayisi += 1}
    }
    let sonuc = binary + " sayisinin maks bosluk sayisi: " + String(boslukListesi.max() ?? 0)
    return sonuc
}
