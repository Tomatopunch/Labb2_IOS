//
//  work.swift
//  Labb2_IOS
//
//  Created by Dennis Andersson on 2019-11-06.
//  Copyright © 2019 Dennis Andersson. All rights reserved.
//

import Foundation
import UIKit

class Work {
    
    var image: UIImage?
    var title: String
    var date: String
    var text: String
    
    init(image: UIImage, title: String, date: String, text: String) {
        self.image = image
        self.title = title
        self.date = date
        self.text = text
    }
}
class Education {
    var image: UIImage?
    var title: String
    var date: String

    init(image: UIImage, title: String, date: String) {
        self.image = image
        self.title = title
        self.date = date
    }
}
