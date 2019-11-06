//
//  ExperienceViewController.swift
//  Labb2_IOS
//
//  Created by Dennis Andersson on 2019-10-30.
//  Copyright © 2019 Dennis Andersson. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var numberOfWork: [Work] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfWork = createArray()
    }
    
    func createArray() -> [Work] {
        var tempNumberOfWork: [Work] = []
        
        let work1 = Work(image: UIImage(named: "appPaint")!, title: "Some text", date: "2016-2019")
        let work2 = Work(image: UIImage(named: "SunIcon")!, title: "Some text", date: "2010-2015")
        let work3 = Work(image: UIImage(named: "TaxiService")!, title: "Some text", date: "2012-2013")
        
        tempNumberOfWork.append(work1)
        tempNumberOfWork.append(work2)
        tempNumberOfWork.append(work3)
        
        return tempNumberOfWork
    }
    
}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfWork.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Work = numberOfWork[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as! WorkCell
        
        cell.setWork(work: Work)
        
        return cell
    }
    
}

