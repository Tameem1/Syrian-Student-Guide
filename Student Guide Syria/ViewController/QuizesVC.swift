//
//  QuizesVC.swift
//  Student Guide Syria
//
//  Created by Make school on 8/3/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit
class QuizesVC: UITableViewController {
    
    let materials = LessonsVC()
    let quizes = QuizesArray()
    let detectMaterial = Constants.detectSections.self
    var detectSection = Int()


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Quizes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Table view data source

   override func numberOfSections(in tableView: UITableView) -> Int {
    if detectSection == detectMaterial.math {
        return quizes.mathQuizes.count
    }
    if detectSection == detectMaterial.arabic {
        return quizes.arabicQuizes.count
    }
    if detectSection == detectMaterial.chemistry {
        return quizes.chemistryQuizes.count
    }
    if detectSection == detectMaterial.physics {
        return quizes.physicsQuizes.count
    }
    if detectSection == detectMaterial.english {
        return quizes.englishQuizes.count
    }
    if detectSection == detectMaterial.french {
        return quizes.frenchQuizes.count
    }
    return quizes.mathQuizes.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if detectSection == detectMaterial.math{
            return (quizes.mathQuizes[section]).count
        }
        if detectSection == detectMaterial.arabic{
            return (quizes.arabicQuizes[section]).count
        }
        if detectSection == detectMaterial.chemistry{
            return (quizes.chemistryQuizes[section]).count
        }
        if detectSection == detectMaterial.physics{
            return (quizes.physicsQuizes[section]).count
        }
        if detectSection == detectMaterial.english{
            return (quizes.englishQuizes[section]).count
        }
        if detectSection == detectMaterial.french{
            return (quizes.frenchQuizes[section]).count
        }
         return (quizes.mathQuizes[section]).count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"

    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizesCell", for: indexPath)
        
        if detectSection == detectMaterial.math{
            cell.textLabel?.text = quizes.mathQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.arabic{
            cell.textLabel?.text = quizes.arabicQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.chemistry{
            cell.textLabel?.text = quizes.chemistryQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.physics{
            cell.textLabel?.text = quizes.physicsQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.english{
            cell.textLabel?.text = quizes.englishQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        if detectSection == detectMaterial.french{
            cell.textLabel?.text = quizes.frenchQuizes[indexPath.section][indexPath.row].title
            return cell
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
