//
//  StudentInfoViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 04/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class StudentInfoViewController: UIViewController {

    var name: String!
    var image = UIImage()
    var classRequested: String!
    
    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var classRequestedLabel: UILabel!
    
    @IBOutlet weak var rejectOutlet: UIButton!
    @IBOutlet weak var acceptOutlet: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        acceptOutlet.layer.cornerRadius = 10
        rejectOutlet.layer.cornerRadius = 10
        
        studentImage.image = image
        studentName.text = name
        classRequestedLabel.text = classRequested
        messageLabel.text = "Hi Shubham! I am looking for a tutor to help me with my " + classRequested +
        " class and saw that you have great experience in tutoring. Could you please help me out too?"
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func acceptButton(_ sender: Any) {
        acceptOutlet.layer.backgroundColor = UIColor.green.cgColor
        acceptOutlet.setTitle("Accepted", for: .normal)
        rejectOutlet.isHidden = true
        acceptOutlet.frame.origin.x = acceptOutlet.frame.origin.x + 100
    }
    
   
    @IBAction func rejectButton(_ sender: Any) {
        rejectOutlet.layer.backgroundColor = UIColor.red.cgColor
        rejectOutlet.setTitle("Declined", for: .normal)
        acceptOutlet.isHidden = true
        rejectOutlet.frame.origin.x =  rejectOutlet.frame.origin.x - 100
        
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
