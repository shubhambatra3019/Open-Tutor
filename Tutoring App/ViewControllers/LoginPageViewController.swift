//
//  LoginPageViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 04/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTextField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInButton(_ sender: Any) {
    
        let myVC = storyboard?.instantiateViewController(withIdentifier: "MainPage") as! ViewController!
        navigationController?.pushViewController(myVC!, animated: true)
    
    
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
   
    
    //func textFieldDidBeginEditing(_textField: UITextField) {
        
      //  saveButton.isEnabled = false
        
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
