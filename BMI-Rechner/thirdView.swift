//
//  thirdView.swift
//  BMI-Rechner
//
//  Created by Daniel Boros / BBS2H20A on 23.09.21.
//

import UIKit

class thirdView: UIViewController {

    var texte = ""
    
    @IBOutlet weak var ausgabeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ausgabeLabel.text = texte
    }
    
    
}


