//
//  ViewController.swift
//  IMT-Calculator-IOS
//
//  Created by Randy Efan Jayaputra on 22/04/20.
//  Copyright © 2020 Randy Efan Jayaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tinggiLabel: UILabel!
    @IBOutlet weak var beratLabel: UILabel!
    @IBOutlet weak var tinggiSlider: UISlider!
    @IBOutlet weak var beratSlider: UISlider!
    
    var kalkulator = Kalkulator()
    var nilaiImt : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tinggiSlideBerubah(_ sender: UISlider) {
        tinggiLabel.text = "\(String(format: "%.2f", sender.value))m";
    }
    
    @IBAction func beratSlideBerubah(_ sender: UISlider) {
        beratLabel.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func buttonDitekan(_ sender: UIButton) {
        let tinggi = tinggiSlider.value
        let berat = beratSlider.value
        
        kalkulator.hitungImt(height: tinggi, weight: berat)
        self.performSegue(withIdentifier: "cekHasil", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cekHasil" {
            let destinationVC = segue.destination as! HasilViewController
            destinationVC.nilaiImt = kalkulator.getNilaiImt()
            destinationVC.saran = kalkulator.getSaran()
            destinationVC.warna = kalkulator.getColor()
        }
    }
    
}

