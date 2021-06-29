//
//  ImcCalulatorViewController.swift
//  project
//
//  Created by obito on 6/26/21.
//  Copyright © 2021 obito. All rights reserved.
//

import UIKit

class ImcCalculatorViewController: UIViewController {

    @IBOutlet var screen: UIView!
    
    @IBOutlet weak var resultat: UILabel!
    
   
    @IBOutlet weak var TailleLabel: UILabel!
    
    
    
    @IBOutlet weak var poidLabel: UILabel!
    
    
    @IBOutlet weak var TailleSlider: UISlider!
    
    
    @IBOutlet weak var PoidSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TailleAction(_ sender: UISlider) {
        
        TailleLabel.text = String(format: "%.2f",sender.value) + " m"
        
        TailleSlider.value = sender.value
      

        
    }
    
    
    @IBAction func PoidAction(_ sender: UISlider) {
        
        poidLabel.text = String(format: "%.2f",sender.value) + " kg"
        
        PoidSlider.value = sender.value
        
    }
    
    @IBAction func IMCAction(_ sender: Any) {
        
        //screen.backgroundColor = UIColor.red
        //print("taille est", TailleSlider.value)
        //print("poid est", PoidSlider.value)
        let calculatrice = IMC(taille: TailleSlider.value, poid: PoidSlider.value)
        
        print("taille slider:",TailleSlider.value)
        print("poid slider:",PoidSlider.value)
        print(calculatrice.calculer().0)
print("****************")
        
        screen.backgroundColor = calculatrice.calculer().1
        
        resultat.text = calculatrice.calculer().0
        
        
    }
    
    
    @IBAction func retry(_ sender: Any) {
        
        screen.backgroundColor = UIColor.white
        resultat.text = "Resultat"
        
    }
    
}

