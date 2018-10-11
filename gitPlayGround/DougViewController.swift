//
//  DougViewController.swift
//  gitPlayGround
//
//  Created by Douglas Patterson on 9/27/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class DougViewController: UIViewController {

    
    @IBOutlet weak var resultsLabel: UILabel!

    @IBOutlet weak var whiteSwitch: UISwitch!
    @IBOutlet weak var blackSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var purpleSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsLabel.text = ""

    }
    

    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if whiteSwitch.isOn && blackSwitch.isOn && redSwitch.isOn && blueSwitch.isOn && greenSwitch.isOn && purpleSwitch.isOn {
            performSegue(withIdentifier: "ToOpenView", sender: nil)
            resultsLabel.text = "Welcome"
        } else {
            resultsLabel.text = "Incorrect Combination"
        }
        }
    
}
