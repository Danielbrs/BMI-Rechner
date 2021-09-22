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
    

