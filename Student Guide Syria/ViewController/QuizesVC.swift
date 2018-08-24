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
    let mathQuizes = mathQuizesArray()
    let arabicQuizes = arabicQuizesArray()
    let chemistryQuizes = chemistryQuizesArray()
    let physicsQuizes = physicsQuizesArray()
    let englishQuizes = englishQuizesArray()
    let frenchQuizes = frenchQuizesArray()
    let detectMaterial = Constants.detectSections.self
    var detectSection = Int()
    var question = String()
    var optionA = String()
    var optionB = String()
    var optionC = String()
//    let quiz0 = 0
//    let quiz1 = 1
//    let quiz2 = 2
//    let quiz3 = 3
//    let quiz4 = 4
//    let quiz5 = 5
//    let quiz6 = 6
//    let quiz7 = 7
//    let quiz8 = 8
    


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Quizes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Table view data source

   override func numberOfSections(in tableView: UITableView) -> Int {
    if detectSection == detectMaterial.math {
        return mathQuizes.list.count
    }
    if detectSection == detectMaterial.arabic {
        return arabicQuizes.list.count
    }
    if detectSection == detectMaterial.chemistry {
        return chemistryQuizes.list.count
    }
    if detectSection == detectMaterial.physics {
        return physicsQuizes.list.count
    }
    if detectSection == detectMaterial.english {
        return englishQuizes.list.count
    }
    if detectSection == detectMaterial.french {
        return frenchQuizes.list.count
    }
    return mathQuizes.list.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if detectSection == detectMaterial.math{
            return mathQuizes.list.count
        }
        if detectSection == detectMaterial.arabic{
            return arabicQuizes.list.count
        }
        if detectSection == detectMaterial.chemistry{
            return chemistryQuizes.list.count
        }
        if detectSection == detectMaterial.physics{
            return physicsQuizes.list.count
        }
        if detectSection == detectMaterial.english{
            return englishQuizes.list.count
        }
        if detectSection == detectMaterial.french{
            return frenchQuizes.list.count
        }
         return mathQuizes.list.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"

    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizesCell", for: indexPath)
        
        if detectSection == detectMaterial.math{
            cell.textLabel?.text = mathQuizes.list[indexPath.row].quizTitle
            return cell
        }
        if detectSection == detectMaterial.arabic{
            cell.textLabel?.text = arabicQuizes.list[indexPath.row].quizTitle
            return cell
        }
        if detectSection == detectMaterial.chemistry{
            cell.textLabel?.text = chemistryQuizes.list[indexPath.row].quizTitle
            return cell
        }
        if detectSection == detectMaterial.physics{
            cell.textLabel?.text = physicsQuizes.list[indexPath.row].quizTitle
            return cell
        }
        if detectSection == detectMaterial.english{
            cell.textLabel?.text = englishQuizes.list[indexPath.row].quizTitle
            return cell
        }
        if detectSection == detectMaterial.french{
            cell.textLabel?.text = frenchQuizes.list[indexPath.row].quizTitle
            return cell
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "toQuestionVC") as? QuestionVC
//        let  quizNumber = mathQuizes.mathQuiz1[indexPath.section][indexPath.row].quizNum
//        let bla = mathQuizes.mathQuiz1[indexPath.section][0].ques
        
        if detectSection == detectMaterial.math {
//             print(bla)
         vc?.question = mathQuizes.list[indexPath.row].questionText
         vc?.optionA = mathQuizes.list[indexPath.row].optionA
         vc?.optionB = mathQuizes.list[indexPath.row].optionB
         vc?.optionC = mathQuizes.list[indexPath.row].optionC
//        navigationController?.pushViewController(vc!, animated: true)
        }
        if detectSection == detectMaterial.arabic {
             question = arabicQuizes.list[indexPath.row].questionText
             optionA = arabicQuizes.list[indexPath.row].optionA
             optionB = arabicQuizes.list[indexPath.row].optionB
             optionC = arabicQuizes.list[indexPath.row].optionC
//            navigationController?.pushViewController(vc!, animated: true)
        }
        if detectSection == detectMaterial.chemistry {
             question = chemistryQuizes.list[indexPath.row].questionText
             optionA = chemistryQuizes.list[indexPath.row].optionA
             optionB = chemistryQuizes.list[indexPath.row].optionB
             optionC = chemistryQuizes.list[indexPath.row].optionC
//            navigationController?.pushViewController(vc!, animated: true)
        }
        if detectSection == detectMaterial.physics {
             question = physicsQuizes.list[indexPath.row].questionText
             optionA = physicsQuizes.list[indexPath.row].optionA
             optionB = physicsQuizes.list[indexPath.row].optionB
             optionC = physicsQuizes.list[indexPath.row].optionC
//            navigationController?.pushViewController(vc!, animated: true)
        }
        if detectSection == detectMaterial.english {
             question = englishQuizes.list[indexPath.row].questionText
             optionA = englishQuizes.list[indexPath.row].optionA
             optionB = englishQuizes.list[indexPath.row].optionB
             optionC = englishQuizes.list[indexPath.row].optionC
//            navigationController?.pushViewController(vc!, animated: true)
        }
        if detectSection == detectMaterial.french {
             question = frenchQuizes.list[indexPath.row].questionText
             optionA = frenchQuizes.list[indexPath.row].optionA
             optionB = frenchQuizes.list[indexPath.row].optionB
             optionC = frenchQuizes.list[indexPath.row].optionC
//            navigationController?.pushViewController(vc!, animated: true)
        }
    }
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "toQuestionVC" {
                let questionController = segue.destination as! QuestionVC
                if detectSection == detectMaterial.math{
                    questionController.detectSection = detectMaterial.math
                }
                else if detectSection == detectMaterial.arabic {
                    questionController.detectSection = detectMaterial.arabic
                }
                else if detectSection == detectMaterial.chemistry{
                    questionController.detectSection = detectMaterial.chemistry
                }
                else if detectSection == detectMaterial.physics{
                    questionController.detectSection = detectMaterial.physics
                }
                else if detectSection == detectMaterial.english{
                    questionController.detectSection = detectMaterial.english
                }
                else if detectSection == detectMaterial.french{
                    questionController.detectSection = detectMaterial.french
                }
                
            }
        }
    }
}



