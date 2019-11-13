//
//  DetailViewController.swift
//  Labb2_IOS
//
//  Created by Dennis Andersson on 2019-11-12.
//  Copyright © 2019 Dennis Andersson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var work: Work?
    var education: Education?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if work != nil {
            setUI()
        }
        else {
            setUiEducation()
        }
    }
    
    func setUI() {
        imageView.image = work?.image
        titleLabel.text = work?.title
        dateLabel.text = work?.date
        descriptionLabel.text = work?.text
    }
    func setUiEducation() {
        imageView.image = education?.image
        titleLabel.text = education?.title
        dateLabel.text = education?.date
        descriptionLabel.text = education?.text
    }
}
