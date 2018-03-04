//
//  Tutor.swift
//  Tutoring App
//
//  Created by Shubham Batra on 03/03/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import Foundation
import UIKit

class Tutor {

    var name: String
    var photo: UIImage?
    var major: String
    var rating: Float

    init?(name: String, photo: UIImage?, major: String, rating: Float) {
        
        self.name = name
        self.photo = photo
        self.major = major
        self.rating = rating
        
    }
    

}
