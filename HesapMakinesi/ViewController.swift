//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Buse Şentürk on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sonucText: UILabel!
    
    var sayi1 = 0
    var sayi2 = 0
    var sonuc = 0
    var islem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func clearText() {
        sonucText.text = ""
    }
    
    @IBAction func clearButton(_ sender: Any) {
        clearText()
    }
    
    @IBAction func sıfırButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "0"
    }
    
    @IBAction func birButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "1"
    }
    
    @IBAction func ikiButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "2"
    }
    
    @IBAction func ucButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "3"
    }
    
    @IBAction func dortButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "4"
    }
    
    @IBAction func besButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "5"
    }
    
    @IBAction func altiButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "6"
    }
    
    @IBAction func yediButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "7"
    }
    
    @IBAction func sekizButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "8"
    }
    
    @IBAction func dokuzButton(_ sender: Any) {
        sonucText.text = sonucText.text! + "9"
    }
    
    @IBAction func artiButton(_ sender: Any) {
        islem = "+"
        sayi1 = Int( sonucText.text!)!
        clearText()
    }
    
    
    @IBAction func esittirButton(_ sender: Any) {
        sayi2 = Int(sonucText.text!)!
        
        switch islem {
        case "+":
            sonuc = sayi1+sayi2
            sonucText.text = String(sonuc)
        default:
            sonucText.text = "ERROR"
        }
    }
}

