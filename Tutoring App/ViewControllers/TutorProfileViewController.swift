//
//  TutorProfileViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class TutorProfileViewController: UIViewController {

    
    @IBOutlet weak var tutorProfileImage: UIImageView!
    
    @IBOutlet weak var tutorNameLabel: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    
    var name: String!
    var rating: String!
    var image = UIImage()
    var major: String!
    
    @IBOutlet weak var acceptButtonLayout: UIButton!
    
    @IBAction func AcceptTutorButton(_ sender: Any) {
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorNameLabel.text = name
        tutorProfileImage.image = image
        ratingLabel.text = rating
        ratingLabel.layer.zPosition = 1
        acceptButtonLayout.layer.cornerRadius = 20
        desc.text = "I am studying " + major + " at University of Massachusetts, Amherst. I have a passion for tutoring and would love to help you out."
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func acceptTutor(_ sender: Any) {
    
        acceptButtonLayout.layer.backgroundColor = UIColor.green.cgColor
        acceptButtonLayout.setTitle("Request Sent", for: .normal)
    
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
