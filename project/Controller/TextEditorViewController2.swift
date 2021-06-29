

import UIKit

class TextEditorViewController2: UIViewController {
    
    var message:String?
    var mcolor:UIColor?
    var mtextfont:UIFont?
    var condund:Bool?

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      

    }
    
    override func viewWillAppear(_ animated: Bool) {
        T2.text = message!
        
      
        
        T2.textColor = self.mcolor
        T2.font = self.mtextfont
        
        if condund == true {
            
            T2.attributedText = NSAttributedString(string: message!, attributes:
                   [.underlineStyle: NSUnderlineStyle.single.rawValue])
            
        }
       
        
    }
    

    
    @IBOutlet weak var T2: UILabel!
}

