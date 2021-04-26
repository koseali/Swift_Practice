//
//  main.swift
//  Swift_Practice
//
//  Created by Ali Köse on 23.03.2021.
//

import Foundation
//
//------------------------------IF ELSE KULLANIM PRATİK------------------------------//
// Bankacılık işlemi eft yapılmak isteniyor.
// İşlem yapılacak işlemin gün ve saat bilgisi mesai saatlari içerisinde
// olup olmamasına göre kullanıcıya işlem yapılma bilgisi verilmesi yap.
//var userDay = 6
//
//var userProcessHour = 11 // 0 ile 24 arası
//
//if userDay > 0 && userDay <= 5 {
//    if (userProcessHour >= 0 && userProcessHour <= 24 ) {
//
//        if (userProcessHour >= 8 && userProcessHour <= 17) && (userProcessHour != 12 && userProcessHour  != 13){
//            print("Hosgeldiniz!! isleminizi ogrenebilir miyim ?")
//        }
//        else if userProcessHour >= 12 && userProcessHour <= 13 {
//            print("ogle arasındayız. Lütefen 13.00 dan sonra geliniz.")
//        }
//        else{
//            print("Mesai Saatlerimiz Dışındasınız. Lütfen 8 -12 veya 13 - 17 arası gelin")
//        }
//                                                        }
//    else{
//        print("Gecersiz Saat")
//    }
//
//
//}
//else{print("Sadece Hafta içi işlem yapmktayız.")}
//
//------------------------------IF ELSE KULLANIM PRATİK------------------------------////
//
//-------------------------------ORNEK CIKTI TAHMİN ET-------------------------------////
//var d = 10
//        if (d <= 10)
//        {d = 11 }
//        else if (d == 10)
//        {d = 9}
//        else if (d > 1)
//        {d = 1}
//        if (d>10)
//        {d = 10}
//        else
//        {d = 11}
//print(d)
//
//for i in 1...10
//{
//    for j in 10...100
//    {
//        repeat {
//            print(j)
//        }
//        while (j < 10)
//
//        break
//    }
//}

//for i in 1...10
//{
//    for j in 10...100
//            {
//
//                print("s")
//                break
//            }
//}

//-------------------------------ORNEK CIKTI TAHMİN ET-------------------------------////



// ---------------Lab: Listedeki elemanlar indexi ile ekrana basılacak---------------////

//let Meyveler = ["Karpuz", "Kavun", "Çilek", "Elma" , "Portakal"]
//var count = 0
//for meyve in Meyveler{
//    print("indexi \(count) olan meyve : \(meyve)")
//    count += 1
//}

// // 2. yöntem
//for index in 0..<Meyveler.count{
//    print("indexi \(index) olan meyve: \(Meyveler[index])")
//}


//// ---------------Lab: Sadece Çilek meyvesi indexi bul ve bas---------------////
//var Meyve = "Çilek"
//var counter = 0
//for i in Meyveler {
//    if i == Meyve {
//        print("\(Meyve) in indexi: \(counter)")
//    }
//    counter += 1
//
//}

//// ---------------Lab: Sadece Çilek meyvesi indexi bul ve bas---------------////
// ---------------Lab: Listedeki elemanlar indexi ile ekrana basılacak---------------////


/// Dıctionary practice
//
//var sozlukSayi = [1: "Karpuz" , 2:"Elma" , 3: "Kavun"]
//var d1 = [Int:String]()
//d1 = [1 : "Ali" , 2 : "Mehmet"]
//print(d1)
////sozlukSayi = [4 : "Cilek"]
//d1[3] = "Asiye"
//print("sozluk baska ekleme \(d1)")
//d1.updateValue("Asiye", forKey: 4) // bunla ekleniyor
//print(d1)
//print(sozlukSayi)
//
//var yeni = d1.filter{$0.key > 1}
//print("Yeni sozluk \(yeni)")
//
//yeni = d1.filter({ (key,value) -> Bool in
//    return key < 3
//})
//print(yeni)
//
//// Dictionary LAB
//
//var sayilar = [ "tekSayilar" : [1,3,5,7,9] , "Cift Sayilar" : [2,4,6,8]]
//
//var tek = sayilar["tekSayilar"]

// Elimizde bulunan birden fazla kişinin bilgileri barındıran bir listedeki tüm kişi bilgi
// Gösterilmesi

// Hoca Anlatımı  başı devamı benim

//var Kisiler = [[String:String]]() // String alan bir dict olan bir liste
//var Kisi_1 = ["Ad" : "Ali" , "Soyad" : "Kose"]
//
//var Kisi_2 = ["Ad" : "Aylin" , "Soyad" : "Naz"]
//
//var Kisi_3 = ["Ad" : "Asiye" , "Soyad" : "Şavli"]
//
//Kisiler.append(Kisi_1)
//Kisiler.append(Kisi_2)
//Kisiler.append(Kisi_3)
//print("ali")
//var counter : Int = 1
//for kisi in Kisiler {
//    print("\(counter).Kisi\t:")
//    print("Adı : \(kisi["Ad"]!)")
//    print("Soyadı: \(kisi["Soyad"]!)" )
//    counter += 1
//}
// hocayla Aynı yazdık.

/// Map fonksyionu kullanımı
// MAP COMPACTMAP FLATMAP REDUCE
//var numbers = [1,2,3,4,5,6,7]
//
//var headers = [String]()
//// Map Kullanım 1
//headers = numbers.map{(sayi) -> String in
//    return "\(sayi)-)"
//}
//print(headers)
//
//// Map Kullanım 2
//headers = numbers.map{sayi in return "\(sayi)-)"}
//print("\(headers)")
//
//// Map Kullanım 3
//headers = numbers.map({"\($0)-)"})
//print(headers)
//
//// Uyarı
//let skorlar = ["1", "2","uc","dort"]
//
//let mapSkor : [Int?] = skorlar.map({str in return Int(str)})
//// Donusum bu şekilde yapmak tip uyumu yoksa Optional olarak kullanılır.
//print(mapSkor)
//
//let CompactMap : [Int] = skorlar.compactMap({str in return Int(str)})
//print(CompactMap)
//
///// Flat MAP Example matris diyelim
//
//let sayilarGrubu = [[1,2,4],[1,23,45,5] , [1,4,5,6]]
//
//let mergeList = sayilarGrubu.flatMap{$0}
//print(mergeList)
//
//let KelimeListesi : [String?] = ["Kelime1",nil, "Kelime3", nil ,"Kelime4"]
//
//let legalWords = KelimeListesi.flatMap{$0} // Flatmap de hata vermez compactmap işlemi
//// Yaptığını yapabilir.
//print(legalWords)
//
//var kelime = ["ali", "Kose", "yas:18"]
//
//var bilesik = kelime.reduce("", +)
//
//print(bilesik)

// Elimizde öğrencilerin notları var. Bu listeye göre öğrencinin not ortalamasının alınıp
// gecme ve kalma kontrol yapılıp ekrana yazdırılması

// 232 ye kadar kendi çabam
//var ogrenciveNot : [[String : String]] = []
//
//ogrenciveNot.append(["Ad" : "Ali" , "Puan" : "95.4" , "Durum": ""])
//ogrenciveNot.append(["Ad" : "Berkay"  ,"Puan" : "33.4"])
//ogrenciveNot.append(["Ad" : "Umut"  , "Puan" : "49.4"])
//ogrenciveNot.append(["Ad" : "Muaz"  , "Puan" : "73.4"])
//var ortalama : Float = 0
//for not in ogrenciveNot{
//    print(not["Puan"]!)
//    ortalama += Float(not["Puan"]!)!
//}
//
//print(ortalama / Float(ogrenciveNot.count))
//
//
//print(ogrenciveNot)
//
// Hoca örneği öğrenciler var  veriler le oynamaca

//var notlar = [[Float]]()
//var ortalamalar = [Float]()
//var durumlar = [String]()
//
//notlar.append([100,100,95])
//notlar.append([40,42,45])
//
//for i in 0 ..< notlar.count{
//    let ortalama = notlar[i].reduce(0){$0 + $1} / Float(notlar[i].count)
//    ortalamalar.append(ortalama)
//    print(ortalama)
//}
//
//durumlar = ortalamalar.map({
//if $0 < 50 {
//    return "Kaldı"}
//else {
//    return "Gecti"}
//}
//)
//print(durumlar)
//print(ortalamalar)
//var liste = [1,2,3,4,5,3,7,6,89,77,64,3,10]
//liste.removeAll(where: {$0 < 4 || $0 >= 10})
//print(liste)

//var liste  = [4,2,5,2,4,12]
//liste.sort()
//liste.reverse()
//print(liste)

//var liste : [Int?] = [1,2,3,4]
//liste[2] = nil
//print(liste[3])

//var liste : [Any] = [1,2,3]
//print(type(of: liste[0]))

//var liste = [6,89,77,64,3,10]
//var liste2 = [1,2,3]
//liste.append(contentsOf: liste2)
//print(liste)


//var liste  = [6,89,77,64,3,10]
//
//liste.forEach {deger in
//
//    print(deger)
//    if (deger > 10)
//    {
//        return
//    }
//}

//var d  = ["key1" : 1, "key2" : 2]
//d["key1"] = 10
//d["key3"] = 11
//d.removeValue(forKey: "key 1")
//print(d)
//
////var liste = [1,2,3,4]
////liste[2] = nil
////print(liste[2])
////
////var liste : [Int] = [1,2,3,4,5]
////print(liste.filter{$0 > 2  && $0 < 5})
//
////let liste  = [4,2,5,2,4,12]
////var liste2  = [Int]()
////
////var sayac = liste2.count
////
////repeat {
////    liste2.append(liste[sayac])
////    sayac += 1
////}while (liste2.max()! < 5)
////print(liste2)
//
////var liste  = [4,2,5,2,4,12]
////liste.sort()
////liste.remove(at:0)
////liste.reverse()
////print(liste)
////
//
////var liste = [1,2,3,4]
////liste.append(1)
////print(liste[4])
//
////var kirmizi = Sandalye()
////print(kirmizi)

//class ayak{
//    var uzunluk : Int?
//}
//
//
//class Masa{
//    var bacakSayisi : Int?
//    var renk : String?
//     var bacakBoy = ayak()
//
//}
//
//let koseliMasa = Masa()
//koseliMasa.bacakSayisi = 4
//koseliMasa.renk = "Kirmizi"
//print("sınır")
//
//koseliMasa.bacakBoy.uzunluk = 45
//print(koseliMasa.bacakBoy)
//var MermerMAsa = Masa()
//
//
//class Kare {
//    var kenarIc : Float = 20
//    var cevreIc : Float = 30
//
//    var kenar : Float{
//        get{
//            return kenarIc
//        }
//
//    }
//
//    var cevre : Float{
//        get{
//            return kenarIc + 4
//        }
//        set{
//            kenarIc = newValue / 4
//        }
//    }
//    func showInfo(){
//        print("Cevre: \(cevre)")
//        print("Kenar: \(kenar)")
//    }
//}
//
//
//
//func Yaz(){
//    print("fonksiyon ici")
//}
//
//Yaz()
//Yaz()
//Yaz()
//
//Yaz()
//
//var kare2 = Kare()

//var numberList : [Float] = [11,12,3,45,4534,643,32,234,234,5435,2323,1213,1]
//
//
//// Fonksiyon Lab mevcut listedeki en büyük , en kucuk ve ort deger bul
//func ekstremumBul(liste : [Float]){
//    var min : Float = 0
//    var maks : Float = 0
//    var toplam : Float = 0
//    var count = 0
//    for sayi in liste{
//        if count == 0 {
//            maks = sayi
//            min = sayi
//            count += 1
//        }
//        if sayi <= min {
//            min = sayi
//        }
//        if sayi >= maks {
//            maks = sayi
//        }
//        toplam += sayi
//    }
//    let ortalama : Float = Float(toplam) / Float( liste.count)
//    return print("listedeki en kucuk deger:\(min) en buyuk deger:\(maks) ve ortalama :\(ortalama)")
//}
//ekstremumBul(liste: numberList)
//
//// Hocam çözümü
//
//var sayilar : [Float] = [1,45,34,445,76]
//
//// Hocam parçalara ayırdı.
//
//func enKucukyaz(){
//    var enKucuk : Float = sayilar[0]
//
//    for sayi in sayilar{
//        if sayi < enKucuk{
//            enKucuk = sayi
//        }
//    }
//    print("En kucuk sayi : \(enKucuk)")
//}
//
//func enBuyukyaz(){
//    var enBuyuk : Float = 0
//    for sayi in sayilar{
//        if sayi > enBuyuk{
//            enBuyuk = sayi
//        }
//    }
//    print(("En Buyuk sayi \(enBuyuk)"))
//}
//
//func OrtalamaYaz(){
//    let ortalama = sayilar.reduce(0){$0 + $1} / Float(sayilar.count)
//    print("ortalma : \(ortalama)")
//}
//
//func DegerleriYaz(){
//    enKucukyaz()
//    enBuyukyaz()
//    OrtalamaYaz()
//}
//
//DegerleriYaz()
//ekstremumBul(liste: sayilar)
// hocadan öğrenilen başlangıc deger vermede ayrıca if yazmaktansa
//  paramtere olarak döngüye aldığımız değerin ilk degerini atayabiliyoruz.


// Fonksiyon çoklu değer döndürme

//func MultipleValue() -> (d1 : String , d2 : Int){
//    return ("",23)
//}
//
//func Karsilastir(s1 : Int , s2 : Int) -> (kucuk: Int , buyuk : Int){
//    if s1 < s2 {
//        return(s1,s2)
//    }
//    return (s2,s1)
//}
//
//print(Karsilastir(s1: 12, s2: 10))
//var kucuk = Karsilastir(s1: 12, s2: 14).kucuk
//print(kucuk)


// Fonk LAb 2
// elimizdeki puan listesine göre listedki en düşük puan , en yüksek puan ve toplam puanları kullanıcya gösterelim.

//func PuanHesapla (puanlar : [Int]) -> (dusuk : Int , yuksek : Int , toplam : Int){
//    var dusuk = puanlar[0]
//    var yuksek = 0
//    var toplam = 0
//    for puan in puanlar{
//        if puan <= dusuk{
//            dusuk = puan
//        }
//        if puan >= yuksek {
//            yuksek = puan
//        }
//    }
//    toplam = puanlar.reduce(0){$0 + $1}
//    return (dusuk,yuksek, toplam)
//}
//
//func PuanHesaplaIki (puanlar : Int...) -> (dusuk : Int , yuksek : Int , toplam : Int){
//    var dusuk = puanlar[0]
//    var yuksek = 0
//    var toplam = 0
//    for puan in puanlar{
//        if puan <= dusuk{
//            dusuk = puan
//        }
//        if puan >= yuksek {
//            yuksek = puan
//        }
//    }
//    toplam = puanlar.reduce(0){$0 + $1}
//    return (dusuk,yuksek, toplam)
//}
//
//let puanListesi = [1,2,3,4,5]
//var enYuksek = PuanHesapla(puanlar: puanListesi).yuksek
//var enDusuk = PuanHesapla(puanlar: puanListesi).dusuk
//var toplam = PuanHesapla(puanlar: puanListesi).toplam
//print("En dusuk not : \(enDusuk) En Yuksek not : \(enYuksek) Toplam: \(toplam)")
//
//let sonuc2 = PuanHesaplaIki(puanlar: 1,2,3,4,5,43,1232)
//print(sonuc2.toplam)

// OVER LOADING
//func f1 (tamsayi : Int){}
//
//func f1 (kusursayi : Float){}
//
//func Topla (s1 : Int, s2 : Int){
//    print(s1 + s2)
//}
//
//func Topla (s1 : Int, s2 : Int) -> Int{
//    return s1 + s2
//}
//
//
//func Topla (s1 : Int, s2 : Int , s3 : Int){
//    print(s1 + s2 + s3)
//}
//
//func Topla (s1 : Int, s2 : Int , s3 : Int) -> Int{
//    return s1 + s2 + s3
//}
//var d : Int = Topla(s1: 12, s2: 12)


// CLOSURE

//func f2 (sonucFonk : (_ p1 : Int) -> ()){
//    let d = 23
//
//    sonucFonk(d)
//}
//
//f2 { (deger) in
//    print(deger)
//}
//
//f2(){
//    deger in
//        print(deger)
//}
//
//func f3 (sonucFonk : (_ p1 : Int) -> (),sonucFonk2 : (_ p1 : Int) -> ()){
//    let d = 23
//
//    sonucFonk(d)
//}
//f3 { (<#Int#>) in
//    <#code#>
//} sonucFonk2: { (<#Int#>) in
//    <#code#>
//}


// FONKSİYONA FONKSİYON PARAMETRESİ VERMEK

//func f1 (p1 : Int){
//    print(p1)
//}
//
//func f2 ( fonk : (Int) -> ()){
//    fonk(3)
//}
//
//f2(fonk: f1)
//// Bu Şekilde kullanım yapılarak tetikleme yapılabilir. fakat bu temiz şekilde closure
//// yapısını aynı fonk değil de başka fonk yapıp paramtere olarak verme işlemi
//// yapısal olarak aynı olmalı ve parantez ile çagırılmamalıdır.
//// Çünkü parametre olarak gittiği için ihtiyaç halinde f2 tarafından tetiklenecektir.
//
//func adminOzellikYukle() {
//    print("Admin Ozellikleri")
//}
//
//func KullanıcıOzellikYukle(){
//    print("Kullanıcı")
//}
//// Dikkat : Bir fonksiona gönderecek olacağımız diğer fonksiyonların  parametre sayısıi sırası, parametre tipi ve geriye dönüşleri aynı olmak zorundadır !!!
//
//func yukle(ozellikYukle: () -> ()){
//    print("Verileri Getir.")
//    print("Temel Ayarlamalar Yapsın.")
//    ozellikYukle() // yükleme fonks admin mi değil mi bilmiyor şu an
//    // Verilen kriterlere göre  işlem yapmak gerekiyor.
//}
//
//var kullanıcıTipi = "A"
//
//if kullanıcıTipi == "A" {
//    yukle(ozellikYukle: adminOzellikYukle)
//}
//else {
//    yukle(ozellikYukle: KullanıcıOzellikYukle)
//}

// FONKSİYON DÖNDÜRME
// IC ICE FONKSİYON KULLANIMI
//func fonk1() -> (Int) -> Float{
//    func local(d1 : Int) -> Float {return Float(d1)}
//
//    return local
//}
//var fIc = fonk1()
//print(fIc(12))
//

// FONKSİYONLAR LAB 3 CLOSURE LA FONK DONDURME BİRLİKTE GİBİ
// İŞLEMYAP diye bir fonk olsun ve sadece işlem tipi alıp işleme göre sonuc döndüren bir
// fonksiyon yaz.

//func IslemYap(IslemTipi : String) -> (Float, Float) -> Float{
//    func Topla(s1 : Float , s2 : Float) -> Float{
//        return s1 + s2
//    }
//    func Cikar(s1 : Float , s2 : Float) -> Float{
//        return s1 - s2
//    }
//    func Bol(s1 : Float , s2 : Float) -> Float{
//        return s1 / s2
//    }
//    func Carp(s1 : Float , s2 : Float) -> Float{
//        return s1 * s2
//    }
//
//    if IslemTipi == "Topla" {
//        return Topla
//    }
//    else if IslemTipi == "Cikar"{
//        return Cikar
//    }
//    else if IslemTipi == "Bol"{
//        return Bol
//    }
//    return Carp
//}
//
//var islem = IslemYap(IslemTipi: "Topla")
//var sonuc = islem(4,5)
//islem = IslemYap(IslemTipi: "Cikar")
// sonuc = islem(4,5)

// INITIALIZER

//class Araba {
//    let renk : String
//    let vites : Int
//    init(color : String, count : Int) {
//        renk = color
//        vites = count
//    }
//    init() {
//        renk = "Siyah"
//        vites = 5
//    }
//}
//
//let mercedes = Araba(color: "Kırmızı", count: 8)
//print(mercedes)
//
//let renault = Araba()
//print(renault.renk)
//// Bu Şekilde Inıt


// CLASS LAB

// AD , İKİNCİ AD , SOYAD , KİMLİK BİLGİLERİ , SİCİL NO BİLGİLERİ BULUNAN BİR PERSONEL LİSTESİ OLUŞTURUP
// LİSTEYE EKLENEN PERSONELLERİN İSMİNİ EKRANA BASTIRAN BİR UYGULAMA TASARLA.
//class Personel {
//    var Ad : String
//    var ikinciAd : String?
//    var Soyad : String
//    var TC : String
//    var SicilNo : Int
//    init(ad: String, soyad: String ,tc :String , sicilno :Int) {
//        Ad = ad
//        Soyad = soyad
//        TC = tc
//        SicilNo = sicilno
//    }
//
//}
//
//var ali = Personel(ad: "Ali", soyad: "Köse", tc: "6246102432", sicilno: 1234)
//var Aylin = Personel(ad: "Aylin", soyad: "Köse", tc: "32145", sicilno: 1231234)
//
//ali.ikinciAd = "Ahmet"
//
//var personalListesi = [Personel]()
//
//func Personalekle(person : Personel){
//    personalListesi.append(person)
//    return print("\(person.Ad) Basarili sekilde listeye eklendi.")
//}
//
//Personalekle(person: ali)
//Personalekle(person: Aylin)
//
//print(personalListesi[0].ikinciAd!)
//print(personalListesi[1].ikinciAd ?? "Fatma")
// Labı kendim yaptım  fakat fonksiyon  içine liste alacağı ve üzerinde işlem yapılmasını yapamadım.
// Hoca Çözümü : HOCA ÇÖZÜMÜ

//class Personel {
//    var Ad : String
//    var IkinciAd : String?
//    var Soyad : String
//    var KimlikNo : String
//    var SicilNo : Int
//    init(ad : String = "Bos" , ikinciad : String? = nil ,soyad :String = "Bos", kimlikno : String = "Bos" , SicilNo : Int = 000) {
//        Ad = ad
//        IkinciAd = ikinciad
//        Soyad = soyad
//        KimlikNo = kimlikno
//        self.SicilNo = SicilNo // Bu şekilde ayrıt ederiz ya da farklı isim veririz.
//    }
//
////    init(ad : String,soyad :String , kimlikno : String , SicilNo : Int) {
////        Ad = ad
////        Soyad = soyad
////        KimlikNo = kimlikno
////        self.SicilNo = SicilNo // Bu şekilde ayrıt ederiz ya da farklı isim veririz.
////    }
//    func BilgileriYazdir(){
//        print("Ad: \(Ad)\t İkinciAd :\( IkinciAd ?? "")\n Soyad : \(Soyad)\t kimlik no: \(KimlikNo)\n Sicilno : \(SicilNo)")
//    }
//
//}
//var personelListesi = [Personel]()
//
//var personel = Personel(ad: "Ali", ikinciad: nil, soyad: "Köse", kimlikno: "12343245", SicilNo: 1231)
//
//personelListesi.append(personel)
//
//for p in personelListesi {
//    p.BilgileriYazdir()
//}
//// ile yazdırdı
//
//
//personel = Personel()

// STRUCT ÖRNEĞİ

//struct Dikdortgen {
//    var kisakenar : Float = 3
//    var uzunkenar : Float?
//}
//
//class Dikdortgenc{
//    var kısakener : Float
//    var uzunkenar : Float
//    init() {
//        kısakener = 0
//        uzunkenar = 0
//    }
//}
//
//var dc = Dikdortgenc()
//
//var ds = Dikdortgen(kisakenar: 2, uzunkenar: 3)
//var ds2 = Dikdortgen()
//print(ds2)
//print(ds)
//print(dc)

// STRUCT YAPISI LAB KARE DİKDORTGEN DAİRE OLUŞTUR KULLAN

//struct Kare {
//   var kenar : Float
////    var cevre :Float
////    var alan : Float
//    var ortak : Ortak
//}
//
//struct Dikdortgen {
//    var uzunkenar : Float
//    var kisakenar : Float
////    var cevre : Float
////    var Alan : Float
//    var ortak : Ortak
//
//}
//
//struct Daire {
//    var yaricap : Float
////    var cevre : Float
////    var alan : Float
//    var ortak : Ortak
//
//}
//// CLASS YAPISINDA ORTAK OLAN CEVRE VE ALANLARI ORTAK OLD DA KALITIM YOLU İLE YAPILIR. STRUCTA İSE
//// burada hepsinin içinde ortak olanları ayırabileceğimiz ayrı bir struct ile alternatifini yapabiliriz.
//// nasıl class de  extends kalitiyorsak aynı islev saglasin diye
//struct Ortak {
//    var cevre : Float
//    var alan : Float
//}
//
//var k = Kare(kenar: 10, ortak: Ortak(cevre: 40, alan: 100)) // burda ortak nesnesi oluşturarak ya da önceden
//
//var d = Dikdortgen(uzunkenar: 20, kisakenar: 5, ortak: Ortak(cevre: 50, alan: 100))
//// pi 3
//var daire = Daire(yaricap: 10, ortak: Ortak(cevre: 60, alan: 300))
//print(k)
//print(d.kisakenar)
//print(daire.ortak.cevre)

// Mutable Struct

//struct Kare {
//    var kenar : Float
//    var ortak : Ortak?
//    mutating func ortakHesapla(){
//        ortak = Ortak(cevre: kenar * 4, alan: kenar * kenar)
//    }
//}
//
//struct Ortak {
//    var cevre : Float
//    var alan : Float
//}
//
//var k = Kare(kenar: 6)
//k.ortakHesapla()
//print(k)
//class Personal {
//   static var sonPersonalNo : Int = 0 // bu degiskeni içeri alırsak Instance member hatası verir.
//
//    var Ad: String
//    var SicilNo : Int  //  var SicilNo : Int = sicilHesapla() bu sekilde de olur
//    init(ad : String) {
//        Ad = ad
//        SicilNo = Personal.sicilHesapla() // bu şekilde de statik fonksiyon kullanılır.
//    }
//     static func sicilHesapla () -> Int{
//        sonPersonalNo += 1
//        return sonPersonalNo
//    }
//    func BilgileriYaz(){
//        print(" Ad : \(Ad) ve  Sicil No: \(SicilNo)")
//    }
//}
//
//var personel = Personal(ad: "Ali")
//personel.BilgileriYaz()
//
//var p2 = Personal(ad: "Mehmet")
//p2.BilgileriYaz()

// ENUM YAPISI KODU YAZ
//
// enumlar web servis veri yollarken sadece parametre ile içinde ne var ne yok ilgilenmeden yollmada kullanır.
// Ya da

//enum Cinsiyet : String{
//    case Erkek = "E"
//    case Kadin = "K"
//}
//var cinsiyet = Cinsiyet.Erkek
//if cinsiyet == Cinsiyet.Erkek {
//    print("enum içi deger : \(cinsiyet)")
//}
//else {
//    print("enum ici deger : \(cinsiyet.rawValue)") // bu şekilde içinde kısa parametre ile iletişime geçilir.
//}

//
//
//


// KALITIM LAB ÖRNEĞİ YAZ
///

//class Ana {
//    var Isim : String
//    var Yas : String
//    var Meslek : String
//    init(isim : String , yas : String, meslek : String) {
//        Isim = isim
//        Yas = yas
//        Meslek = meslek
//    }
//    func yazdir(){
//        print("\(Isim) Hanımefendi \(Yas) yasinda \(Meslek) yapmaktadir.")
//    }
//}
//class Cocuk : Ana {
//    var Egitim : String
//
//    init(egitim : String) {
//        super.init(isim: String, yas: String, meslek: String)
//        // ÖNCEKİ CLASS IN SUPER CLASS INITILIAZER KULLANIMI ANLAMAMIŞIM !!!!!!
//        Egitim = egitim
//    }
//        override func yazdir() {
//        print("cocuk class i")
//    }
//}
//var emir = Cocuk.init(egitim: "Ilkokul")
//emir.yazdir()

//
//
//

// OVERRIDE ORNEK

//class mainClass {
//    var P1 : Int
//
//    init(p1 : Int) {
//        P1 = p1
//    }
//
//    func Prinnt(){
//        print("main class print")
//    }
//}
//
//class subClass : mainClass{
//
//    override init(p1: Int) {
//
//        super.init(p1: p1)
//        // eger  ana class ın da init çalışssn isteniyorsa
//
//
//    }
////    init(P2 :Int) { HATALI KULLANIM
////        super.init(P1: p2) // ana sınıf initiliaze
////        // superin initiliazeri nesnenşn belleğe çıkma işlemi yaparkan optional olmayan d2 bir şey atanmadığı için çalışmadı
////        p2 = P2
////    }
//    override func Prinnt() {
//        // eger  ana class ın da fonk çalışssn isteniyorsa superden çekeriz
//        super.Prinnt()
//        print("subclass print")
//    }
//}
//
//var nesne = subClass(p1: 3)
//nesne.Prinnt()

// PROTOCOL EXAMPLE
// bir class da ya da struct ta kullanılması zorunlu standartlar oluşturmak için kullanılır
//protocol Isim{
//    var No : Int{get}
//
//    func Yazma(isim : String)
//    init(no: Int)
//}
//class personel : Isim{
//    var No: Int
//
//    required init(no: Int) {
//        No = no
//    }
//
//
//    func Yazma(isim: String) {
//        print("isim \(isim)")
//    }
//}
//
//var ali = personel(no: 3)
//ali.Yazma(isim: "Ali")
//print(ali.No)
//
//// Struct için de yaz farkı söyle
//
//protocol p2 {
//    var No : personel {get set}
//    init (no : personel)
//    var deger : String{get}
//}
//
//struct s1 : p2{
//    var No : personel
//
//    init(no: personel) {
//        No = no
//    }
//    var deger: String = "12" //
//}
//var nesnes = s1(no: ali)
//
//// COKLU Protokol kullanılabilir. örnek : s1 : p1 ,p2 {} şeklinde.
//
////
//// Protocol  Lab
//
//// Müdür Müdür yardımcısı , yazılımcı temizlik görevlisi iş yerinde çalışanların bilgi tutulduğu yapı için çalışan
//// ve yöneticilerin standartlarının belirlendiği yapının oluşturulması
//// çalışan için sicil no ad soyad zorunludur.,
//// Yöneticiler Çalışanın tüm özellerikilini kapsayarak çalışan kontrol etmek zorundadır.
//// hepsi izin kullanabilir
//protocol CalisanProtokol {
//    var SicilNo: Int {get set}
//    var Ad: String {get set}
//    var Soyad: String {get set}
//    func IzinKullan()
//}
//
//protocol YoneticiProtokol : CalisanProtokol{
//    func kontrolEt()
//}
//
//class Calisan: CalisanProtokol {
//    var SicilNo: Int
//
//    var Ad: String
//
//    var Soyad: String
//
//    func IzinKullan() {
//        <#code#>
//    }
//
//    init() {
//        Ad = "a"
//        Soyad = "b"
//        SicilNo = 0
//    }
//}
//class Mudur : YoneticiProtokol{
//    func kontrolEt() {
//        <#code#>
//    }
//
//    var SicilNo: Int
//
//    var Ad: String
//
//    var Soyad: String
//
//    func IzinKullan() {
//        <#code#>
//    }
//    init() {
//        Ad = "a"
//        Soyad = "b"
//        SicilNo = 0
//    }
//
//
//}

// EXTENSION BİR SINIFI FARKLI DOSYALARDA KULLANMA EĞER HER BİR PROTOK ALTINDA KURALLAR AYRI VE ÇOKSA
//AYRI DOSYALARA AYIRMAK DAHA DOĞRU
// HEPSİNİ AYNI YERDE YAZMAK SADECE YAZILAN BÖLÜMDE GEÇERLİDİR.

//class Personal {
//    var Ad: String = ""
//    var Soyad : String = ""
//}
//
//extension Personal{
//    // elimizde bulunan class kütüphane olarak gelebilir. Aynı sınıfın kodları birden fazla dosya parçalayabiliriz.
//}
// extension var olan class a değişkene özellik kazandırılması.

//var yazi : String = "Ali"
//
//extension String {
//    func yazdir() {
//        print(self)
//    }
//    func ToInt() -> Int? {
//        return Int(self) ?? 0
//    }
//}
//var sonuc = yazi.ToInt()
//print(sonuc!)
//yazi.yazdir()

// Erişim BELİRLEYİCİLERR
// 5 tane open public internal(default) fileprivate ve private

//open class C1 {
//    open var d1 = 9
//    fileprivate var fp : Int?
//    private  let prv = 4
//    open func f1(){}
//
//
//}
//
//var s = C1()
// // private a erişim yok şu an mesela
//extension C1 {
//    func f2(){
//        d1 = 10
//    }
//}

// Otomatik Referans Sayacı

//class Personal {
//    var a : Int
//
//    init() {
//        a = 10
//    }
//    init(s : Int) {
//        a = s
//    }
//}
////var p1 = Personal()
////// RFS 1
////var p1Kopya = p1
////// RFS 2
////p1Kopya.a = 5
////
////print(p1.a)
////print(p1Kopya.a) // Bu şekilde 2 si de aynı değerleri işaret ettiğini görmüş oluruz.
////
//
//func f1 (s : Personal){
//    // RFS 3 oldu
//    var k = s
//    // RS 4 olucak
//
//}
//
//func f2 (){
//    var p = Personal() // RFS izlenilecek nesne 1
//    var k = p
//    // RFS  2 oldu
//    f1(s: k)
//
//}
//
//f2()
//// RS 0 düştü her bir nesne için birde deinit() vardır her hangi parametre almaz. kod blogu almamızı sağlar
//// RFS 0 a düşen nesnelerde oto tetiklenir.
//// burdaki debug i anlamadım. Tekrar izle


// İLERİ SEVİYE SWİFT
// Lazy anlatımı

//struct Kisi{
//    var Ad : String
//    var Soyad : String
//}
//
//class B {
//     lazy var kisi = Kisi(Ad: "Ali", Soyad: "Kose")
//}
//// burda B belleğe çıktığında yani nesne olunca Kisi de belleğe çıkıca.
//
//var b = B()
//var kisi = b.kisi
//
//print(kisi.Ad)
//// Lazy ile aktif deger atanmayan yani başlangıc değeri olan değişken nesne ne ise her tip için kullanılmadan önce
//// bellekte yer kaplamasını engelleyerek büyük performans sağlar.
//

// GUARD

//func yasEsik(yas : Int?){
//    // gecerli değer kontrolü if le de yapılabilir ama bu iş guardişi
//    guard let y = yas else{ // if let kullanımı şeklinde optional kotnrol çözümü
//        return
//    }
//    guard y > 0 && y < 130 else {
//        return
//    }
//
//    // islemler kotnoller
//             }

// HATA CLASS I ERROR  VE ÖZEL HATA OLUŞTURMA

// en uygun kullanım enumlar
//enum HataKodları : Int, Error{
//    case h1 = 10
//    case h2 = 11
//    case h3 = 12
//}
//var Hata = HataKodları.h1
//
//func hataKontrol() -> String {
//    // hata işlemleri kotnrol
//
//    return "Olusan hata Kodu : \(Hata.localizedDescription)"
//}
//
//print(hataKontrol())

// Customize Hata Kodlari
enum HataKodları : Int, Error{
    case h1 = 10
    case h2 = 11
    case h3 = 12
}
// hata fırlatımını yakalamamız lazım.
//func HataKontrol() throws -> String{
//    throw HataKodları.h1 // ben h1 i fırlatıyorm
//    return "23"
//}
//do {
//    var s = try HataKontrol()
//}
//catch HataKodları.h1{
//    print("h1 hatasi bilgi ve işlem yap")
//}
//catch HataKodları.h2{
//    print("h2 hatasi bilgi ve işlem yap")
//}
//catch HataKodları.h3{
//    print("h3 hatasi bilgi ve işlem yap")
//}
//catch{
//    print("bilinmeyen bir hatada göstermek için")
//    print(error.localizedDescription)
//}

// HATA YÖNETİMİ LAB : KENDİMİZE ÖZEL HATA OLUŞTURMA ERROR SINIFI BİR PROTOKOL

//protocol CustomError : LocalizedError {
//    var Kod : Int{get}
//    var Baslik : String?{get}
//    var Aciklama : String?{get}
//}
//// struct oluşturma sebebi  birh atanın bellekte uzun süre kalması heapte yer alması uygun yapı değil
//struct customError : CustomError {
//    var Kod: Int
//
//    var Baslik: String?
//
//    var Aciklama: String?
//
//    init(kod : Int , baslik : String? , aciklama : String?) {
//        self.Kod = kod
//        Baslik = baslik ?? "baslikHata" // selfi isimler aynı ise ayırt etmek için kullanabilriz.
//        Aciklama = aciklama ?? "AciklamaHata"
//    }
//}
//func HataKontrol() throws -> String{
//    if 3 < 5 {
//        throw customError(kod: 10, baslik: "Baslik beklenmeyen", aciklama: "Sistem hatası")
//    }
//    return "Hata Yok"
//}
//do {
//    var durum = try  HataKontrol()
//    print(durum)
//}
//catch  {
//    let hata = error as! customError
//    print(hata.Baslik)
//}
//// do catch farklı kullanımları var önceden enum kullandım burada struct kullanıldı.

// dispatch queu

// DispatchQueue.main.sync { // burası zaten main içeirisndesin kullanamazsın diyor }

//DispatchQueue.main.async {
//    <#code#> // eğer main thread üzerinden kullanmak istemiyorsak  global yani sistem den yapılabilir ama tavsiye edilmez yanii
//}
//// sistem kuyruklarını bize döner arkaplanda
//DispatchQueue.global().sync {
//    <#code#>
//}
//
//DispatchQueue.global().async {
//    <#code#>
//}
//// asenkron işlem yapmak için web servis için URLSessionTask data Task web sservis çağırımlarında kullanılır.
//
//func ListeKopya <T> (liste : [T]) -> [T]{
//    var KopyaListe = [T]()
//    for data in liste{
//        KopyaListe.append(data)
//    }
//    return KopyaListe
//}
//var listeKopya = ListeKopya(liste: ["2","23","3",4,3])
//print(listeKopya)
// kopyalama işlemi gibi çok farklı tipte yapabiliriz. Tip sınırlı generic değil
// generic yokken tüm tipler için ayrı ayrı kod yazılması lazım
// öçzüm

//class Sinif<T>{
//    var genericTip :T // ya optional ile de initlemeden ? yapılabilir.
//    init(generic : T) {
//        genericTip = generic
//    }
//}
//var s = Sinif<String>(generic: "selm")
//// bazen karşılaştırma olabilecek tipler olsun standart olsun
//protocol P1 {
//    var d : String {get}
//}
//
//class SP : P1 {
//    var d: String = "Metin"
//}
//
//class SinifP < T : P1 >{
//    var generictip : T?
//}
//var nesne = SinifP<SP>()
//print(nesne.generictip)
//// Generic biraz daha bakılmalı
print("Ali")
//
//----------------Ornek Girilen bir sayının hangi sayının kaçıncı üstü olduğunu bulan recursive fonk yazınız. ----------------


func usHesapla() {
   // print("Lutfen bir sayi giriniz.", terminator: ".")
    let girilenSayi = 100
        //Int(readLine()!)!
    var carpanListe = [Int]()

    for carpan in 2...girilenSayi{
        if girilenSayi %  carpan == 0{
            carpanListe.append(carpan)
        }
    }
    var tabanSayisi = 0
    var uSayisi = 0
    var sayi = girilenSayi
    if let minCarpan = carpanListe.min() {
        var usSayisi = 0
        while sayi != 1 {
             sayi = sayi / minCarpan
            usSayisi += 1
        }
            
        }
    // 100 sayiis tam degil tam dogru çalişmiyor yukarıdaki. bu düzeltme için yazılabilir.
//    for carpan in carpanListe{
//        while sayi != 1{
//            sayi = sayi / carpan
//            usSayisi += 1
//        }if Int(pow(Decimal(carpan)), usSayisi) == girilenSayi{
//            tabanSayisi = carpan
//            break
//        }else{usSayisi = 0}
//
//        print("Girilen \(girilenSayi) sayisi \(minCarpan) ın \(usSayisi). kuvvetidir.")
//     }
    //return usHesapla()
}

usHesapla()

//----------------Ornek Girilen bir sayının hangi sayının kaçıncı üstü olduğunu bulan recursive fonk yazınız. ----------------

// girilen 10 luk sistem sayıyı ikilik sisteme çevirme

//var sayi = 8
//var binaryList = [Int]()
//while sayi != 1{
//    if sayi % 2 == 0{
//        sayi /= 2
//        if sayi != 1{
//            binaryList.append(0)
//        }else if sayi == 1 {
//            binaryList.append(1)
//        }
//        print(sayi)
//    }
//    else {
//        sayi = sayi / 2
//        print(sayi)
//        binaryList.append(1)
//    }
//    if sayi == 1 && binaryList.last != 1 {
//        binaryList.append(1)
//    }
//}
//var size = binaryList.count - 1
//var yazi = ""
//for eleman in binaryList {
//    yazi += String(eleman)
//}
//print("ali")
//print(binaryList)

// -----------------------------ONLUK SAYIYI 2 LİK SİSTEME ÇEVİRİP 1 LER ARASINDA  EN ÇOK 0SAYISI HESAPLAMA-------------//
//func DecimalToBinary(N : Int) -> String{
//    var sayi = N
//    var kalanList = [Int]()
//    while sayi != 1{
//        if sayi % 2 == 0{
//            sayi = sayi / 2
//            kalanList.append(0)
//            if sayi == 1 {
//                kalanList.append(1)
//                break
//            }
//        }
//        else {
//            sayi = sayi / 2
//            kalanList.append(1)
//            if sayi == 1 {
//                kalanList.append(1)
//                break
//            }
//        }
//        // sayiyi bulduk binary listede
//    }
//    // listedeki degerleri tersten stringe koyma
//    var binary : String = ""
//    var count = kalanList.count - 1
//    while count != 0{
//        binary += String(kalanList[count])
//        count -= 1
//        if count == 0{
//            binary += String(kalanList[count])
//            break
//        }
//    }
//      // 1- -1 arası maks sıfır sayısı bulma
//    var flag = false
//    var boslukSayisi = 0
//    var boslukListesi = [Int]()
//
//    for i in binary{
//        if i == "1" { flag = true // bir daha buraya donmesi icin 1 olması lazım ondan flag resetlemeye gerek yok.
//            if flag == true && boslukSayisi != 0 {
//                boslukListesi.append(boslukSayisi)
//                boslukSayisi = 0}
//                }
//        if flag == true && i == "0"{ boslukSayisi += 1}
//    }
//    let sonuc = binary + " sayisinin maks bosluk sayisi: " + String(boslukListesi.max() ?? 0)
//    return sonuc
//}

// -----------------------------ONLUK SAYIYI 2 LİK SİSTEME ÇEVİRİP 1 LER ARASINDA  EN ÇOK 0 SAYISI HESAPLAMA-------------//

// BİR LİSTE VAR LİSTEDEKİ EN SONDAKİ ELEMANI EN BAŞA GETİREN FONKSİYN

//liste[3] = liste[2]
//liste[2] = liste[1]
//liste[1] = liste[0]
// liste[n] = liste [n - 1]
//liste[0] = last


// girilen diziyi sağa kaydıran fonksiyon.
func solution (_ A : inout [Int] , _ K : Int) -> [Int]{
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
var listee = [1,2,3,4]

func fibonacci(uzunluk : Int) -> [Int]{
    var list = [1,1]
    let tekrar = uzunluk - 2
    for i in 0..<tekrar{
        list.append(list[i] + list[i + 1])
    }
    return list
}
print(fibonacci(uzunluk: 15))

// girilen adet kadar baştan sona asal bulan fonksiyon.
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
            asalList.append(sayi)
            print(sayi)}
            else{break}
        }}
    return asalList }
var listasal = asalSayi(adet: 10)
print(listasal.count)

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
            print(sayi)
        }
    }
    return asalList
}

//class C{}
//class D : C{}
//var d : D = C()
//var s : C = D()
//class C { init(p1 : String) {}}
//class D : C {}
//
//class C { init(p1 : String) {}}
//class D : C {init(p1 : Int) {super.init(p1: String(p1))}}
//class C {init(p1 : String) {}}
//class D : C {init() {super.init(p1: "")}}


//class A{
//    public var a = ""
//    internal var b = ""
//    fileprivate var c = ""
//    private var d = ""
//
//}
//class B : A{
//    override init() {
//        super.init()
//
//    }
//
//}
//enum enm : Int {
//   case e1 = 2
//   case e2 = 4
//
//    var aciklama : String {
//        switch self {
//            case .e1 : return "e1"
//            case .e2 : return "e2"
//        }
//    }
//}
//class C : A
//{
//    override func f1()
//    {
//        print("C f1")
//    }
//}
//
//open class A
//{
//    open func f1()
//    {
//        print("A f1")
//    }
//}
//
//extension C
//{
//    func f1()
//    {
//        print("C extension f1")
//        self.f1()
//    }
//}
//

//class Sinif
//{
//    var d : Int {
//        get
//        set(value)
//        {
//            d = value
//        }
//
//    }
//}

//public func solution( A :  [Int]) -> Int {
//    var max = A[0]
//       for sayi in A {
//           if sayi > max {
//               max = sayi
//           }
//       }
//       if max > 0 {
//           max = max + 1
//       }
//
//       else if max <= 0 {
//           max = 1
//       }
//    return max
//}
//var sonuc = solution(A: [1,3,6,4,1,2])
//print(sonuc)

//public func solution(_ A : inout [Int]) -> Int {
//    var max = A[0]
//    for sayi in A{
//        for kucukeleman in 0...sayi {
//
//        }
//    }
//
//    return max
//}
//public func solution(_ A : inout [Int]) -> Int {
//    var max = A[0]
//       for sayi in A {
//           if sayi > max {
//               max = sayi
//           }
//       }
//       if max > 0 {
//           max = max + 1
//       }
//
//       else if max <= 0 {
//           max = 1
//       }

//var sayiListe = [1,2,4,5]
//var maks = sayiListe[0]
//
//for sayi in sayiListe{
//    if sayi > maks{
//        maks = sayi
//    }
//}
//var sonDeger = 0
//for sonuc in 1...maks{
//    var flag = true
//    for listesayi in sayiListe{
//        if listesayi == sonuc{
//            flag = false
//            continue
//        }
//    }
//    if  flag == true {
//        sonDeger = sonuc
//        break
//    }
//}
//print(sonDeger)
// Kodluyoruz demo sorusu

//public func solution(_ A : inout [Int]) -> Int {
//    var maks = A[0]
//    var sonuc = 1
//    for sayi in A {
//        if sayi > maks {
//            maks = sayi
//        }
//    }
//    maks += 1
//    if maks <= 0 {
//        return 1
//    }
//    print("maks: \(maks)")
//    for olmayansayi in 1...maks{
//        var flag = true
//        for listesayi in A{
//            if listesayi == olmayansayi{
//                flag = false
//            }
//        }
//
//
//        if flag == true{
//            sonuc = olmayansayi
//            break
//        }
//    }
//
//return sonuc
//}
// [1,2,4,5]
var Sayilist = [1, 2, 3]
//Sayilist = Sayilist.sorted()
//var deger = 1
//var flag = false
//
//while flag == true{
//    flag = Sayilist.map{sayi ->  in
//        if sayi == deger{
//            return true
//        }
//        return false }
//}

//var sayi = 256
//var sonuc = (sayi % 100)  / 10
//print("Deger KAç\(sonuc)")

//var sayiList = [4,12,2,43,15,36]
//var sonuclist = Sayilist[2,:4]
//print(sonuclist)
//var S = "codility"
//var sozluk = [Character: Int]()
//var count = 0
//var encokgecenHarf : Character = "a"
//for harf in S{
//    if sozluk[harf] != nil {
//        sozluk[harf] = 2
//        encokgecenHarf = harf
//        break
//    }
//    sozluk[harf] = count + 1
//}
//

func FindMostDivision(liste1 : [Float] , liste2 : [Float]) -> String {
    var kesirSozluk = ["" : 0]
    var kesirdegeri : Float = 0
    for birincilistesayi in liste1 {
        var sayac = 1
        for ikincilistesayi in liste2 {
            kesirdegeri = birincilistesayi / ikincilistesayi
            kesirSozluk[String(kesirdegeri)]  = sayac
            if kesirSozluk[String(kesirdegeri)] != nil {
                sayac += 1
                kesirSozluk[String(kesirdegeri)] = sayac
            }
        }
    }
    print(liste1.count)
    for listeindex in 0..<liste1.count{
        kesirdegeri = liste1[listeindex] / liste2[listeindex]
        kesirSozluk[String(kesirdegeri)]!  +=  1
                if kesirSozluk[String(kesirdegeri)] != nil  {
                    kesirSozluk[String(kesirdegeri)]! += 1
                }
    }

    var index = 0
    var anahtar = ""
    for deger in kesirSozluk{
        if deger.value > index {
            index = deger.value
            anahtar = deger.key
        }
    }
    return anahtar
}
var liste1 :[Float] = [4,4,7,1,2]
var liste2 :[Float] = [4,4,8,1,2]

//

//print(kesirSozluk)
//print("maks anahtar = \(anahtar) ve donme sayisi \(index)")

// cumle split atma
//var  cumle = "Ali Ders Calis"
//var fullNameArr = cumle.split() {$0 == " "}
//print(fullNameArr)

//func SplitString(Text : String) -> Substring {
//    let splitText = Text.split(separator: " ")
//    return splitText
//}
//var Liste = [Substring]()
//Liste = SplitString(Text: "Selam olsun sana")
//print(SplitString(Text: "Selam Olsun Sana Ali"))
//
var filtreliListe : [String] = []
var tamliste  = ["Elma", "Armut", "Portakal", "Limon", "Ayva", "Erik"]
filtreliListe = tamliste.filter({(str: String) -> Bool in
            return str.range(of: "a", options: .caseInsensitive) != nil
        })
print(filtreliListe)
