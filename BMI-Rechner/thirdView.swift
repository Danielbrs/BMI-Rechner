//
//  thirdView.swift
//  BMI-Rechner
//
//  Created by Daniel Boros / BBS2H20A on 23.09.21.
//

import UIKit

class thirdView: UIViewController {

    var texte = ""
    var abschaetzung = ""
    
    @IBOutlet weak var ausgabeLabel: UILabel!
    @IBOutlet weak var abschaetzungLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ausgabeLabel.text = texte
        abschaetzungLabel.text = abschaetzung
    }
    
    
    
    
}


