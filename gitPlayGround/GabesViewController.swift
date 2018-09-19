//
//  GabesViewController.swift
//  gitPlayGround
//
//  Created by Gabriel Blaine Palmer on 9/18/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class GabesViewController: UIViewController {

    @IBOutlet weak var switchImage: UIImageView!
    @IBOutlet weak var madSkillzValue: UIStepper!
    @IBOutlet weak var coolnessSlider: UISlider!
    @IBOutlet weak var potatoSwitchValue: UISwitch!
    
    var coolness: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func potatoSwitch(_ sender: UISwitch) {
        if sender.isOn {
            switchImage.isHidden = false
        } else {
            switchImage.isHidden = true
        }
    }
    
    func updateCoolness() {
        coolness = Int(coolnessSlider.value) + Int(madSkillzValue.value)
        
        coolness += potatoSwitchValue.isOn ? 5 : -5
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
