//
//  SliderAdnimationViewController.swift
//  project
//
//  Created by obito on 6/26/21.
//  Copyright © 2021 obito. All rights reserved.
//



import UIKit

class SliderAnimationViewController: UIViewController {
    
    @IBOutlet weak var value1: UILabel!
    
    
    @IBOutlet weak var value2: UILabel!
    
    
    @IBOutlet weak var seg1: UISegmentedControl!
    
    
    @IBOutlet weak var seg2: UISegmentedControl!
    
    
    @IBAction func SliderAction(_ sender: UISlider) {
        
        value1.text = String(Int(sender.value))
        value2.text = String(Int(sender.value),radix: 16)
        
        seg1.selectedSegmentIndex = Int(sender.value) % 10
        
        seg2.selectedSegmentIndex = Int(sender.value) / 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


