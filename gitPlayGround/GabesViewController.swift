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
    @IBOutlet weak var endLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func potatoSwitch(_ sender: UISwitch) {
        if sender.isOn {
            switchImage.isHidden = false
        } else {
            switchImage.isHidden = true
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        var coolness: Int = 0
        coolness = Int(coolnessSlider.value) + Int(madSkillzValue.value)
        coolness += potatoSwitchValue.isOn ? 5 : -3
        
        endLabel.text = String(coolness)
        endLabel.isHidden = false
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
