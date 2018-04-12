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
    var nam: String = "Hi"
    var img = UIImage()
    var rat: String = ""
    var major: String = ""
    
   
    
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
        cell.tutorImage.image = UIImage(named: "image.png")
        cell.tutorRating.layer.zPosition = 1
        cell.tutorMajor.text = tutor.major
        cell.tutorRating.text = String(tutor.rating)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: index) as! TutorInfoTableViewCell
       
        let myVC = storyboard?.instantiateViewController(withIdentifier: "profileViewController") as! TutorProfileViewController
        
        myVC.name = currentCell.usernameLabel.text!
        //img = currentCell.tutorImage.image!
        //myVC = currentCell.tutorRating.text!
        myVC.image = currentCell.tutorImage.image!
        myVC.rating = currentCell.tutorRating.text
        myVC.major = currentCell.tutorMajor.text
        navigationController?.pushViewController(myVC, animated: true)
        //performSegue(withIdentifier: "profileView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
   
    private func loadTutors() {
        
        let tutor1 = Tutor(name: "Shubham Batra", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 4.8)
        let tutor2 = Tutor(name: "Daniela Molina", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 4.5)
        let tutor3 = Tutor(name: "Sushant Rao", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 4.4)
        let tutor4 = Tutor(name: "Rohan Nandkumar", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 4.1)
        let tutor5 = Tutor(name: "Catherine Walsh", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 4.1)
         let tutor6 = Tutor(name: "Sharath Ramkumar", photo: #imageLiteral(resourceName: "image.png"), major: major, rating: 3.8)
        
        tutors.append(tutor1!)
        tutors.append(tutor2!)
        tutors.append(tutor3!)
        tutors.append(tutor4!)
        tutors.append(tutor5!)
        tutors.append(tutor6!)
        
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //    Get the new view controller using segue.destinationViewController.
       //  Pass the selected object to the new view controller.
        if(segue.identifier == "profileView") {
        let profileVC = segue.destination as! TutorProfileViewController
        //profileVC.tutorProfileImage.image = img
            profileVC.name = nam
            profileVC.ratingLabel.text = rat
        }


}*/
}
