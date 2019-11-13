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
    var numberOfEducation: [Education] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfWork = createArrayWork()
        numberOfEducation = createArrayEducation()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func createArrayWork() -> [Work] {
        var tempNumberOfWork: [Work] = []
        
        let work1 = Work(image: UIImage(named: "appPaint")!, title: "Work 1", date: "2013-2014", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        let work2 = Work(image: UIImage(named: "SunIcon")!, title: "Work 2", date: "2014-2017", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        let work3 = Work(image: UIImage(named: "TaxiService")!, title: "Work 3", date: "2017-2018", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        
        tempNumberOfWork.append(work1)
        tempNumberOfWork.append(work2)
        tempNumberOfWork.append(work3)
        
        return tempNumberOfWork
    }
    func createArrayEducation() -> [Education] {
        
        var tempNumberOfEducation: [Education] = []
        
        let education1 = Education(image: UIImage(named: "appPaint")!, title: "Education 1", date: "2016-2019", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        let education2 = Education(image: UIImage(named: "SunIcon")!, title: "Education 2", date: "2010-2015", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        let education3 = Education(image: UIImage(named: "TaxiService")!, title: "Education 3", date: "2012-2013", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ")
        
        tempNumberOfEducation.append(education1)
        tempNumberOfEducation.append(education2)
        tempNumberOfEducation.append(education3)
        
        return tempNumberOfEducation
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? DetailViewController {
            if let work = sender as? Work {
                destVC.work = work
            }
            else if let education = sender as? Education {
                destVC.education = education
            }
        }
    }
}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return numberOfWork.count
        }
        else {
            return numberOfEducation.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Work"
        }
        else {
            return "Education"
        }
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as! WorkCell
        
        if indexPath.section == 0 {
            let work = numberOfWork[indexPath.row]
            cell.setWork(work: work)
        }
        else {
            let education = numberOfEducation[indexPath.row]
            cell.setEducation(education: education)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0  {
            let work = numberOfWork[indexPath.row]
            performSegue(withIdentifier: "MasterToDetail", sender: work)
        }
        else {
            let education = numberOfEducation[indexPath.row]
            performSegue(withIdentifier: "MasterToDetail", sender: education)
        }
    }
}


