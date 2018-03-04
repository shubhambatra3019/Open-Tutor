//
//  TutorTableViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class TutorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tutorTable: UITableView!
    
    var tutors = [Tutor]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadTutors()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tutors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "tutorCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TutorInfoTableViewCell else {
            fatalError("The cell is not n instance of MealTableViewCell.")
            
        }
        let tutor = tutors[indexPath.row]
        
        
        let image = UIImage(named: "image.png")
        //cell.imageView?.layer.borderColor = UIColor.black.cgColor
        // cell.imageView?.layer.cornerRadius = 30
        cell.usernameLabel.text = tutor.name
        cell.imageView?.image = image
       
        cell.tutorMajor.text = tutor.major
        cell.tutorRating.text = String(tutor.rating)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
   
    private func loadTutors() {
        
        let tutor1 = Tutor(name: "Shubham Batra", photo: #imageLiteral(resourceName: "tutorImage.jpg"), major: "Mathemtics", rating: 3.4)
        let tutor2 = Tutor(name: "Rohan Nandakumar", photo: #imageLiteral(resourceName: "tutorImage.jpg"), major: "ECE", rating: 3.5)
        let tutor3 = Tutor(name: "Sharath Ramkumar", photo: #imageLiteral(resourceName: "tutorImage.jpg"), major: "BioChem", rating: 3.7)
        let tutor4 = Tutor(name: "Sushant Rao", photo: #imageLiteral(resourceName: "tutorImage.jpg"), major: "Chem Engineering", rating: 3.5)
        let tutor5 = Tutor(name: "Random person", photo: #imageLiteral(resourceName: "tutorImage.jpg"), major: "Random Major", rating: 3.4)
        
        tutors.append(tutor1!)
        tutors.append(tutor2!)
        tutors.append(tutor3!)
        tutors.append(tutor4!)
        tutors.append(tutor5!)
        
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //    Get the new view controller using segue.destinationViewController.
       //  Pass the selected object to the new view controller.
        
    }


}
