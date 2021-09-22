//
//  ViewController.swift
//  BMI-Rechner
//
//  Created by Daniel Boros / BBS2H20A on 22.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    let geschlecht = ["männlich", "weiblich"]
    
    @IBOutlet weak var geschlechtauswaehlen: UIPickerView!
    @IBOutlet weak var gewichtTextField: UITextField!
    @IBOutlet weak var groesseTextField: UITextField!
    @IBOutlet weak var ausgabeLabel: UILabel!
    
    // Variablen für Textfields
    var gewicht = 0.0
    var groesse = 0.0
    var bmi = 0.0
    var ausgabe = 0.0
    
    // Ausrechnen des BMI Wertes
    func bmiBerechnen() {
        
        bmi = gewicht / (groesse * groesse)
        
        // Ausgabe
       // werteAnzeigen()
        
    }
    
     func werteAnzeigen() {
    
        let stringAusgabe = String(format: "%.2f", bmi)
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        geschlechtauswaehlen.delegate = self
        geschlechtauswaehlen.dataSource = self
    
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return geschlecht.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return geschlecht[row]
     }
   }
    

