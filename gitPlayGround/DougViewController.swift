//
//  DougViewController.swift
//  gitPlayGround
//
//  Created by Douglas Patterson on 9/27/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class DougViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var monthPicker: UIPickerView!
    @IBOutlet weak var dayPicker: UIPickerView!
    
   var months = ["Month", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November","December"]

    var feb = [1...28]
    var shortMonths = [1...30]
    var longMonths = [1...31]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        monthPicker.delegate = self
        monthPicker.dataSource = self
    }
    
        // Month Picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
        // Day Picker
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
