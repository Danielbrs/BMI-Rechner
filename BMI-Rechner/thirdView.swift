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

    
    /*func changecolorred(){
       // abschaetzungLabel.text =
        abschaetzungLabel.textColor = UIColor.red
    }
    func changecolorgreen(){
        abschaetzungLabel.text = "Normalgewicht"
        abschaetzungLabel.textColor = UIColor.green
    }
    func changecolororange(){
        abschaetzungLabel.textColor = UIColor.orange
    }
    
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        ausgabeLabel.text = texte
        abschaetzungLabel.text = abschaetzung
        
        }
        
    }
    
    
    
    



