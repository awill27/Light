//
//  ViewController.swift
//  Light
//
//  Created by MXC Swift on 7/26/20.
//  Copyright © 2020 Ashley Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    var lightOn=true

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    
    }
    
    @IBOutlet weak var FlashlightButton: UIImageView!
    
    
    @IBOutlet weak var moonLightButtonImage: UIButton!
    
    @IBOutlet weak var dayLightButtonImage: UIImageView!
    //second division between Outlets & Actions
    
    
    @IBAction func dayLightButton(_ sender: UIButton) {
        dayLightButtonImage.image=UIImage(named:"LIGHT")
//new line will be added here for daylight button
    }
    @IBAction func moonLightButton(_ sender: UIButton) {
//        moonLightButtonImage.image=UIImage(named:"MOONLIGHT")
//        
        // new line will be added here for moonlight button
    }
    @IBAction func buttonPressed(_ sender: Any){
        lightOn = !lightOn
        updateUI()
    }
    func updateUI (){
//view.backgroundColor = lightOn ?.white:.black
        self.view.backgroundColor = .random()
            
     
        
        
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red:  .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}
    

