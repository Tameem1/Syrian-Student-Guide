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
    let detectMaterial = Constants.detectSections.self

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Lessons"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    
    
    // MARK: - Table view data source
   override func numberOfSections(in tableView: UITableView) -> Int {
    if detectSection == detectMaterial.math{
        return lessons.mathLessons.count
        
    }
    if detectSection == detectMaterial.arabic{
        return lessons.arabicLessons.count
        
    }
    if detectSection == detectMaterial.chemistry{
        return lessons.chemistryLessons.count
        
    }
    if detectSection == detectMaterial.physics{
        return lessons.physicsLessons.count
        
    }
    if detectSection == detectMaterial.english{
        return lessons.englishLessons.count
        
    }
    if detectSection == detectMaterial.french{
        return lessons.frenchLessons.count
        
    }
        return lessons.mathLessons.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if detectSection == detectMaterial.math{
        return (lessons.mathLessons[section]).count
            
        }
        if detectSection == detectMaterial.arabic{
            return (lessons.arabicLessons[section]).count
            
        }
        if detectSection == detectMaterial.chemistry{
            return (lessons.chemistryLessons[section]).count
        }
        if detectSection == detectMaterial.physics{
            return (lessons.physicsLessons[section]).count
        }
        if detectSection == detectMaterial.english{
            return (lessons.englishLessons[section]).count
        }
        if detectSection == detectMaterial.french{
            return (lessons.frenchLessons[section]).count
        }
        return (lessons.mathLessons[section]).count
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Unit\(section)"
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        if detectSection == detectMaterial.math{
        cell.textLabel?.text = lessons.mathLessons[indexPath.section][indexPath.row].title
        return cell
        }
        if detectSection == detectMaterial.arabic{
            cell.textLabel?.text = lessons.arabicLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.chemistry{
            cell.textLabel?.text = lessons.chemistryLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.physics{
            cell.textLabel?.text = lessons.physicsLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.english{
            cell.textLabel?.text = lessons.englishLessons[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.french{
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
        if detectSection == detectMaterial.math{
            presentSafariVC()
        }
        
        if detectSection == detectMaterial.arabic {
        let url = lessons.arabicLessons[indexPath.section][indexPath.row].url
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == detectMaterial.chemistry{
            let url = lessons.chemistryLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == detectMaterial.physics {
            let url = lessons.physicsLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == detectMaterial.english {
            let url = lessons.englishLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        if detectSection == detectMaterial.french{
            let url = lessons.frenchLessons[indexPath.section][indexPath.row].url
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
    }
}

