//
//  ClassPickerViewController.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class ClassPickerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var classesCollectionView: UICollectionView!
    var classes: [String: UIColor] = [:]
    var keys = Array<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        classes["Math 131"] = UIColor.magenta
        classes["CMPSCI 121"] = UIColor.blue
        classes["HIST 110"] = UIColor.brown
        classes["ENG 112"] = UIColor.darkGray
        classesCollectionView.delegate = self
        classesCollectionView.dataSource = self
        keys = Array(classes.keys)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = self.classesCollectionView.frame.size
        let cellWidth = screenSize.width/2 - 10
        let cellHeight = cellWidth
        let size = CGSize(width: cellWidth, height: cellHeight)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return edgeInsets
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return classes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "classesCollection", for: indexPath) as? ClassesCollectionViewCell
        else {
            fatalError("The cell is not n instance of MealTableViewCell.")
        }
        let clas = keys[indexPath.row]
        cell.classNameLabel.text = clas
        cell.backgroundColor = classes[clas]
        cell.classNameLabel.frame.size = CGSize(width: cell.frame.size.width - 10, height: cell.frame.size.height/2)
        
        return cell
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let myVC = segue.destination as! TutorTableViewController
        //myVC.major = currentMajor
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
