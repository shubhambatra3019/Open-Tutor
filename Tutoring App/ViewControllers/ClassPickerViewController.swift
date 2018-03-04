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
     @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var classDropDown: UIPickerView!
    @IBOutlet weak var classTextBox: UITextField!
    var currentMajor: String!
    var list: [String] = []
    var math: [String] = []
    
    var dict: [String: [String]] = [:]
    var keys = Array<String>()
    var current: String = "Mathematics"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchButton.layer.cornerRadius = 20
        textBox.isUserInteractionEnabled = false
        classTextBox.isUserInteractionEnabled = false
        dropDown.tag = 1
        classDropDown.tag = 2
        list = ["Mathematics", "Computer Science", "ECE", "Chem Engineering", "BioChem"]
     //   math = ["131", "132", "233", "235", "331"]
        dict["Mathematics"] = ["131", "132", "233", "235", "331"]
        dict["Computer Science"] = ["121", "187", "230", "250", "311", "383"]
        dict["ECE"] = ["101", "130", "189", "267", "356", "440"]
        dict["Chem Engineering"] = ["118", "190", "260", "310", "430"]
        dict["BioChem"] = ["220", "280", "360","520", "560"]
        keys = Array(dict.keys)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pickerView.tag == 1) {
        return keys.count
        }
        else {
            return (dict[current]?.count)!
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView.tag == 1) {
            self.view.endEditing(true)
           // current = keys[row]
            return keys[row]
        }
        else{
            self.view.endEditing(true)
            return dict[current]?[row]
            
        }
      
    }
        

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if(pickerView.tag == 1){
            self.textBox.text = self.keys[row]
            current = self.keys[row]
            currentMajor = self.keys[row]
            classDropDown.reloadAllComponents()
           // self.classTextBox.text = "Select A Class"
        }
        else {
            self.classTextBox.text = self.dict[current]?[row]
        }
            self.dropDown.isHidden = false
        
    }
    
    @IBAction func FindTutorButton(_ sender: Any) {
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let myVC = segue.destination as! TutorTableViewController
        myVC.major = currentMajor
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
