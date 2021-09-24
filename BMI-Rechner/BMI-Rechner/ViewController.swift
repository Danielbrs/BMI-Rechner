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
    
    
    // Variablen für Textfields
    var gewicht = 0.0
    var groesse = 0.0
    var bmi = 0.0
    var ausgabe = 0.0
    var bmikomma = ""
    var ab = ""
    
    let vc2 = thirdView(nibName: "thirdView", bundle: nil)
    
    // Ausrechnen des BMI Wertes
    @IBAction func bmiBerechnen(_ sender: UIButton) {
        
        gewicht = Double(gewichtTextField.text!) ?? 0.0
        groesse = Double(groesseTextField.text!) ?? 0.0
        
        bmi = gewicht / (groesse * groesse)
        bmikomma = String(format: "%.2f", bmi)
        print(bmi)
    
        vc2.texte = bmikomma
        navigationController?.pushViewController(vc2, animated: true)
        
        
        
        
        if bmi < 30 {
                
            ab = "Normalgewicht"
            
            print(ab)
        }
        
        if bmi < 39.1 && bmi >= 30 {
                
            ab = "Übergewicht"
            print(ab)
        }
        
        if bmi > 39.1 {
                
            ab = "starkes Übergewicht"
            print(ab)
            
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! thirdView
        destinationVC.texte = String(bmikomma)
        destinationVC.abschaetzung = ab
    }
    
    
    

    
    func ausgeben(wert: Double){
        
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

    
   
   

    
    
    
    
    
    
    
   
    

