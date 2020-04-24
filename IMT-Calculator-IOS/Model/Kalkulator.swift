//
//  Kalkulator.swift
//  IMT-Calculator-IOS
//
//  Created by Randy Efan Jayaputra on 25/04/20.
//  Copyright © 2020 Randy Efan Jayaputra. All rights reserved.
//

import UIKit

struct Kalkulator {
    
    var imt : IMT?
    
    func getNilaiImt() -> String {
        return String(format: "%.2f", imt?.nilai ?? 0.0)
    }
    
    mutating func hitungImt(height: Float, weight: Float) {
        let nilaiImt = weight / (height * height)
        
        if nilaiImt < 18.5 {
            imt = IMT(nilai: nilaiImt, saran: "Kamu Kekurangan Berat! Makan yang Banyak lagi ya", warna: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if nilaiImt < 24.9 {
            imt = IMT(nilai: nilaiImt, saran: "Kamu Berat Normal", warna: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            imt = IMT(nilai: nilaiImt, saran: "Kamu kelebihan berat badan! Segera Diet sehat", warna: #colorLiteral(red: 1, green: 0.3042651117, blue: 0.2868447602, alpha: 1))
        }
        
    }
    
    func getSaran() -> String {
        return imt?.saran ?? " "
    }
    
    func getColor() -> UIColor {
        return imt?.warna ?? UIColor.white
    }
}
