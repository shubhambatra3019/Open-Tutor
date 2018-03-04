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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorNameLabel.text = name
        tutorProfileImage.image = image
        ratingLabel.text = rating
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
