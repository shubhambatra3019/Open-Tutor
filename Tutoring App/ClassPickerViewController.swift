//
//  ClassPickerViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class ClassPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!

    @IBOutlet weak var classDropDown: UIPickerView!
    @IBOutlet weak var classTextBox: UITextField!
    
    var list = ["Mathematics", "Computer Science", "ECE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textBox.isUserInteractionEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return list[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textBox.text = self.list[row]
        self.dropDown.isHidden = false
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.textBox {
          //  self.dropDown.isHidden = false
            //if you dont want the users to se the keyboard type:
            
            textField.endEditing(false)
        }
        
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
