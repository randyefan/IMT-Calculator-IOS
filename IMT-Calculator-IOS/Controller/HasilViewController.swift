//
//  HasilViewController.swift
//  IMT-Calculator-IOS
//
//  Created by Randy Efan Jayaputra on 24/04/20.
//  Copyright © 2020 Randy Efan Jayaputra. All rights reserved.
//

import UIKit

class HasilViewController: UIViewController {

    @IBOutlet weak var hasilLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var saran: String?
    var warna: UIColor?
    var nilaiImt: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = warna
        hasilLabel.text = nilaiImt
        adviceLabel.text = saran

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hitungDitekan(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
