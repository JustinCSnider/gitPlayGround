//
//  GabesTestingViewController.swift
//  gitPlayGround
//
//  Created by Gabriel Blaine Palmer on 10/1/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class GabesTestingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var entryTextField: UITextField!
    @IBOutlet weak var WordList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WordList.layer.borderWidth = 2
        WordList.layer.borderColor = UIColor.black.cgColor
        WordList.layer.cornerRadius = 5
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if entryTextField.text != nil {
            
            var str = entryTextField.text!
            str = str.replacingOccurrences(of: ",", with: "")
            let strArray: [String.SubSequence] = str.split(separator: " ", maxSplits: Int.max, omittingEmptySubsequences: true)
            
            WordList.text += strArray.joined(separator: "\n")
            
            entryTextField.text = ""
        }
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
