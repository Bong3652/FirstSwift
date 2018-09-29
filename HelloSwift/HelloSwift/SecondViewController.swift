//
//  SecondViewController.swift
//  HelloSwift
//
//  Created by APPLE on 9/23/18.
//  Copyright © 2018 Bong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var QuailtyPicker: UIPickerView!
    @IBOutlet weak var QualityBtn: UIButton!
    let qkey = ["Old SwiftKey", "Good SwiftKey", "Great SwiftKey", "Ultra SwiftKey", "Lengendary SwiftKey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuailtyPicker.dataSource = self
        QuailtyPicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func QuailtySelect(_ sender: AnyObject) {
        QuailtyPicker.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerview: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return qkey.count
    }
    func pickerView(_ pickerview: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return qkey[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        QualityBtn.setTitle(qkey[row], for: UIControlState.normal)
        QuailtyPicker.isHidden = true
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
