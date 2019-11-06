//
//  WorkCell.swift
//  Labb2_IOS
//
//  Created by Dennis Andersson on 2019-11-06.
//  Copyright © 2019 Dennis Andersson. All rights reserved.
//

import UIKit

class WorkCell: UITableViewCell {

    @IBOutlet weak var workImageView: UIImageView!
    @IBOutlet weak var workTitleLabel: UILabel!
    @IBOutlet weak var workDateLabel: UILabel!
    
    func setWork(work: Work) {
        workImageView.image = work.image
        workTitleLabel.text = work.title
        workDateLabel.text = work.date
    }
}
