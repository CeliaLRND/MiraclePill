//
//  ViewController.swift
//  MiraclePill
//
//  Created by Mark Price on 7/10/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
    
    @IBOutlet weak var succesIcon: UIImageView!
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    
    @IBOutlet weak var affBuyBtn: UIButton!
    @IBAction func buyBtn(_ sender: AnyObject) {
    succesIcon.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        zipCodeField.isHidden = true
        zipCodeLabel.isHidden = true
        countryField.isHidden = true
        countryLabel.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        zipCodeField.isHidden = false
        zipCodeLabel.isHidden = false
        countryField.isHidden = false
        countryLabel.isHidden = false
    }

}

