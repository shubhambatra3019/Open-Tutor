//
//  TutorRequestViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 04/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class TutorRequestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tutorRequestTable: UITableView!
    var student = [Tutor]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStudentData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "requestTutor"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TutorRequestTableViewCell else {
            fatalError("The cell is not n instance of MealTableViewCell.")
            
        }
        let student = self.student[indexPath.row]
        
        cell.studentName.text = student.name
        cell.studentImage.image = student.photo
        cell.studentClass.text = student.major
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: index) as! TutorRequestTableViewCell
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "studentProfile") as! StudentInfoViewController
        
        myVC.name = currentCell.studentName.text
        //img = currentCell.tutorImage.image!
        //myVC = currentCell.tutorRating.text!
        myVC.image = currentCell.studentImage.image!
        myVC.classRequested = currentCell.studentClass.text
        navigationController?.pushViewController(myVC, animated: true)
        //performSegue(withIdentifier: "profileView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    private func loadStudentData() {
        
        let student1 = Tutor(name: "Jessica Savarese", photo: #imageLiteral(resourceName: "image.png"), major: "MATH 331")
        let student3 = Tutor(name: "Darcy Malone", photo: #imageLiteral(resourceName: "image.png"), major: "Public Health 317")
        let student2 = Tutor(name: "Samuel Reismann", photo: #imageLiteral(resourceName: "image.png"), major: "Computer Science 121")
        
        student.append(student1!)
        student.append(student2!)
        student.append(student3!)
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
