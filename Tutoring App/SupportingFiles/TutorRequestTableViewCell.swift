//
//  TutorRequestTableViewCell.swift
//  Tutoring App
//
//  Created by Shubham Batra on 04/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class TutorRequestTableViewCell: UITableViewCell {

    @IBOutlet weak var studentClass: UILabel!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
