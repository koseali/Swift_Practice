//
//  ShortFunctions.swift
//  Swift_Practice
//
//  Created by Ali Köse on 17.04.2021.
//

import Foundation


// return multiple choice functin-on.
func deneme(sayi : Int ,sayi_iki : Int) -> (Toplam : Int , Carpim : Int) {
    let toplan = sayi + sayi_iki
    let carpim = sayi * sayi_iki
    return (toplan,carpim)
}

// soru : Substring String e Cast edemiyorum.
func SplitString(Text : String) -> [Any] {
    let splitText = Text.split(separator: " ")
    //let splitText_iki = Text.split(){$0 == " "}
    return splitText
}

// Find to first repetitive character and return character
public func solution( Metin : String) -> String {
var sozluk = [Character: Int]()
let count = 0
var encokgecenHarf : Character = "a"
for harf in Metin{
    if sozluk[harf] != nil {
        encokgecenHarf = harf
        break
    }
    sozluk[harf] = count + 1
}
    return String(encokgecenHarf)
}


// girilen sayiya kadar asal sayı bul.
func asalGirilen(sinir : Int) -> [Int]{
    var asalList = [Int]()
    for sayi in 2...sinir {
        var asalFlag = true
        for bolen in 2..<sayi{
            if sayi % bolen == 0{
                asalFlag = false
            }
        }
        if asalFlag == true{
            asalList.append(sayi)
        }
    }
    return asalList
}

// 100 e kadar girilen adet kadar baştan sona asal bulan fonksiyon.
func asalSayi(adet : Int) -> [Int]{
    var asalList = [Int]()
    for sayi in 2...100{
        var asalFlag = true
        for bolen in 2..<sayi{
            if sayi % bolen == 0{
                asalFlag = false
            }
        }
        if asalFlag == true{
            if  asalList.count < adet{
            asalList.append(sayi)}
            else{break}
        }}
    return asalList }

// Girilen uzunluk kadar fibonacci sayısı bulan fonksiyon
func FibonacciBul(uzunluk : Int) -> [Int]{
    var list = [1,1]
    let tekrar = uzunluk - 2
    for i in 0..<tekrar{
        list.append(list[i] + list[i + 1])
    }
    return list
}

// girilen diziyi sağa kaydıran fonksiyon.
func ShiftList (_ A : inout [Int] , _ K : Int) -> [Int]{
    for _ in 0..<K{
        var counter = A.count - 1
        let last = A[counter]
        while counter != 0 {
            A[counter] = A[counter - 1]
            if counter == 1{
                A[0] = last
            }
            counter -= 1
        }
    }
    return A
}

// Girilen Sayının Tabanı ve Kuvvetini bulan Fonksiyon.
func FindPow(sayi : Int) -> (Taban : Int , Us : Int) {
    var carpanListesi = [Int]()
    for carpan in 2...sayi{
        if sayi % carpan == 0{
            carpanListesi.append(carpan)
        }}
        for carpan in carpanListesi{
            var sonuc = carpan
            var usSayisi = 1
            while sonuc != sayi{
                sonuc = sonuc * carpan
                usSayisi += 1
                if sonuc == sayi{
                    return (carpan , usSayisi)
                }
                else if sonuc > sayi{
                    break
                }
            }
        }
    return (sayi , 1)
}

