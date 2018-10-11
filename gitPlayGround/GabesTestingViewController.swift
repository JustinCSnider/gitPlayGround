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
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WordList.text = loadText()
        
        WordList.layer.borderWidth = 2
        WordList.layer.borderColor = UIColor.black.cgColor
        WordList.layer.cornerRadius = 5
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if entryTextField.text?.trimmingCharacters(in: .whitespaces) != "" && entryTextField.text != nil {
            
            var str = entryTextField.text!
            str = str.replacingOccurrences(of: ",", with: "")
            let strArray: [String.SubSequence] = str.split(separator: " ", maxSplits: Int.max, omittingEmptySubsequences: true)
            
            WordList.text += strArray.joined(separator: "\n")
            
            entryTextField.text = ""
        }
        
        saveButton.isEnabled = true
    }
    
    //MARK: Actions
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        saveText()
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        WordList.text = ""
        saveText()
    }
    
    //MARK: Private Methods
    
    private func saveText() {
        if let unwrappedText = WordList.text {
            NSKeyedArchiver.archiveRootObject(unwrappedText, toFile: Text.ArchiveURL.path)
        }
    }
    
    private func loadText() -> String? {
        let str = NSKeyedUnarchiver.unarchiveObject(withFile: Text.ArchiveURL.path) as? String
        return str
    }
    
}
