//
//  LessonsVC.swift
//  Student Guide Syria
//
//  Created by Make school on 7/20/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit
import SafariServices
class LessonsVC: UITableViewController {
    
// Proerties
    let lessons = LessonsArray()
    var detectSection = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Lessons"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    
    
    // MARK: - Table view data source
   override func numberOfSections(in tableView: UITableView) -> Int {
    if detectSection == 1{
        return lessons.mathLessons.count
        
    }
    if detectSection == 2{
        return lessons.arabicLessons.count
        
    }
    if detectSection == 3{
        return lessons.chemistryLessons.count
        
    }
    if detectSection == 4{
        return lessons.physicsLessons.count
        
    }
    if detectSection == 5{
        return lessons.englishLessons.count
        
    }
    if detectSection == 6{
        return lessons.frenchLessons.count
        
    }
        return lessons.mathLessons.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if detectSection == 1{
        return (lessons.mathLessons[section]).count
            
        }
        if detectSection == 2{
            return (lessons.arabicLessons[section]).count
            
        }
        if detectSection == 3{
            return (lessons.chemistryLessons[section]).count
        }
        if detectSection == 4{
            return (lessons.physicsLessons[section]).count
        }
        if detectSection == 5{
            return (lessons.englishLessons[section]).count
        }
        if detectSection == 6{
            return (lessons.frenchLessons[section]).count
        }
        return (lessons.mathLessons[section]).count
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Unit\(section)"
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        if detectSection == 1{
        cell.textLabel?.text = lessons.mathLessons[indexPath.section][indexPath.row].title
        return cell
        }
        if detectSection == 2{
            cell.textLabel?.text = lessons.arabicLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == 3{
            cell.textLabel?.text = lessons.chemistryLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == 4{
            cell.textLabel?.text = lessons.physicsLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == 5{
            cell.textLabel?.text = lessons.englishLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == 6{
            cell.textLabel?.text = lessons.frenchLessons[indexPath.section][indexPath.row].title
            return cell
        }
        return cell
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        func presentSafariVC() {
            let url = lessons.mathLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        if detectSection == 1 {
            presentSafariVC()
        }
        
        if detectSection == 2 {
        let url = lessons.arabicLessons[indexPath.section][indexPath.row].url
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == 3 {
            let url = lessons.chemistryLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == 4 {
            let url = lessons.physicsLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == 5 {
            let url = lessons.englishLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == 6 {
            let url = lessons.frenchLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
    }
}

