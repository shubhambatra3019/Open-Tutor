//
//  ViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tutorButton: UIButton!
    @IBOutlet weak var findATutorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tutorButton.layer.cornerRadius = 30
        findATutorButton.layer.cornerRadius = 30
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tutorButton(_ sender: Any) {
    
    }
    
    @IBAction func findATutor(_ sender: Any) {
    
    }
    
}

