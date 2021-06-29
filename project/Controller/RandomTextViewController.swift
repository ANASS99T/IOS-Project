//
//  RandomTextViewController.swift
//  project
//
//  Created by obito on 6/26/21.
//  Copyright © 2021 obito. All rights reserved.
//

import UIKit

class RandomTextViewController: UIViewController {
    
    let names = ["Albert Einstein","J.J. Thomson","Ernest Rutherford","John Dalton","James Chadwick"]
    
    let actions = ["Photon","Electron","Proton","Atom","Neutron"]

    @IBOutlet weak var quoteLabel: UILabel!
    

    @IBAction func quoteAction() {
        
        let rnameindex = Int(arc4random_uniform(5))
        let ractionindex = Int(arc4random_uniform(5))
        
        let word = names[rnameindex] + " Discovers " + actions[ractionindex]
        
        quoteLabel.text = word
        
    }
}


