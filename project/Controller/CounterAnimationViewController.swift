//
//  CounterAnimationViewController.swift
//  project
//
//  Created by obito on 6/26/21.
//  Copyright © 2021 obito. All rights reserved.
//

import UIKit

class CounterAnimationViewController: UIViewController {

    var time = Timer()
    var cpt = 0
    var ps = 0
    var start = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var TimeLabel: UILabel!
    
    @IBOutlet weak var Message: UITextField!
    
    @IBAction func Pause(_ sender: Any) {
        
        if ps == 0 {
            
            Message.text = "Count Pause pressed"
            time.invalidate()
            ps = 1
            start = 0
        }else{
            start = 0
            Message.text = "Pause already pressed"
            
        }
        
    }
    
    @IBAction func Play(_ sender: Any) {
        
        
        if start == 0 {
            Message.text = "Count Play Pressed"
            start = 1
            ps = 0
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(afficher), userInfo: nil, repeats: true)
    
        }else{
            ps = 0
            Message.text = "Play already pressed"
            
        }
        
    
       
    }
    
    @objc func afficher(){
        
        TimeLabel.text = String(cpt)
        cpt = cpt + 1
        
        if(cpt % 2 == 0){
            
            img.image = UIImage(named: "starfull")
            
        }else{
            
            img.image = UIImage(named: "starempty")
            
        }
    }
    
    @IBAction func Stop(_ sender: Any) {
        
        Message.text = "Count Stop pressed"
        time.invalidate()
        cpt = 0
        TimeLabel.text = "0"
        ps = 0

    }
}

