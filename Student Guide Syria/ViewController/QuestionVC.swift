//
//  QuestionVC.swift
//  Student Guide Syria
//
//  Created by Make school on 8/8/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit

class QuestionVC : UIViewController {
    @IBOutlet var questionLabel: UILabel!//QuizzesArray: title
    @IBOutlet var choiceAButton: UIButton!//QuizzesArray: choiceA
    @IBOutlet var choiceBButton: UIButton!//QuizzesArray: choiceB
    @IBOutlet var choiceCButton: UIButton!//QuizzesArray: choiceC
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionCounter: UILabel!
//    var ques = ""
//    var choiceA = ""
//    var choiceB = ""
//    var choiceC = ""
    var questionNumber: Int = 0
    var selectedAnswer: Int = 0
    var score: Int = 0
    let allMathQuestions = mathQuizesArray()
    let allArabicQuestions = arabicQuizesArray()
    let allChemistryQuestions = chemistryQuizesArray()
    let allPhysicsQuestions = physicsQuizesArray()
    let allEnglishQuestions = englishQuizesArray()
    let allFrenchQuestions = frenchQuizesArray()
//    var quizNumber = 0
    let detectMaterial = Constants.detectSections.self
//    let quizesVC = QuizesVC()
    var question = ""
    var optionA = String()
    var optionB = String()
    var optionC = String()
//    var detectQuizMaterial = Int()
    var detectSection = Int()


    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
//        choiceAButton.setTitle(choiceA, for: .normal)
//        choiceBButton.setTitle(choiceB, for: .normal)
//        choiceCButton.setTitle(choiceC, for: .normal)

    }
    @IBAction func answerPressed(_ sender: UIButton) {
        
            if sender.tag == selectedAnswer {
                //            ProgressHUD.showSuccess("Correct")
                score += 1
            }else{
                //            ProgressHUD.showError("Incorrect")
            }
            questionNumber += 1
            updateQuestion()
        
    }
    
    
    
    func updateQuestion(){
        if detectSection == detectMaterial.math {
        if questionNumber <= allMathQuestions.list.count - 1{
//            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allMathQuestions.list[questionNumber].questionText
            choiceAButton.setTitle(allMathQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            choiceBButton.setTitle(allMathQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            choiceCButton.setTitle(allMathQuestions.list[questionNumber].optionC, for: UIControlState.normal)
//            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allMathQuestions.list[questionNumber].answer
            updateUI()
        }else {
            alertRestart()
            }
        }
           else if detectSection == detectMaterial.arabic {
                if questionNumber <= allArabicQuestions.list.count - 1{
                    //            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
                    questionLabel.text = allArabicQuestions.list[questionNumber].questionText
                    choiceAButton.setTitle(allArabicQuestions.list[questionNumber].optionA, for: UIControlState.normal)
                    choiceBButton.setTitle(allArabicQuestions.list[questionNumber].optionB, for: UIControlState.normal)
                    choiceCButton.setTitle(allArabicQuestions.list[questionNumber].optionC, for: UIControlState.normal)
                    //            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
                    selectedAnswer = allArabicQuestions.list[questionNumber].answer
                    updateUI()
                }else {
                    alertRestart()
            }
            }
           else if detectSection == detectMaterial.chemistry {
                if questionNumber <= allChemistryQuestions.list.count - 1{
                    //            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
                    questionLabel.text = allChemistryQuestions.list[questionNumber].questionText
                    choiceAButton.setTitle(allChemistryQuestions.list[questionNumber].optionA, for: UIControlState.normal)
                    choiceBButton.setTitle(allChemistryQuestions.list[questionNumber].optionB, for: UIControlState.normal)
                    choiceCButton.setTitle(allChemistryQuestions.list[questionNumber].optionC, for: UIControlState.normal)
                    //            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
                    selectedAnswer = allChemistryQuestions.list[questionNumber].answer
                    updateUI()
                }else {
                    alertRestart()
            }
            }
          else  if detectSection == detectMaterial.physics {
                if questionNumber <= allPhysicsQuestions.list.count - 1{
                    //            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
                    questionLabel.text = allPhysicsQuestions.list[questionNumber].questionText
                    choiceAButton.setTitle(allPhysicsQuestions.list[questionNumber].optionA, for: UIControlState.normal)
                    choiceBButton.setTitle(allPhysicsQuestions.list[questionNumber].optionB, for: UIControlState.normal)
                    choiceCButton.setTitle(allPhysicsQuestions.list[questionNumber].optionC, for: UIControlState.normal)
                    //            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
                    selectedAnswer = allPhysicsQuestions.list[questionNumber].answer
                    updateUI()
                }else {
                    alertRestart()
            }
            }
           else if detectSection == detectMaterial.english {
                if questionNumber <= allEnglishQuestions.list.count - 1{
                    //            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
                    questionLabel.text = allEnglishQuestions.list[questionNumber].questionText
                    choiceAButton.setTitle(allEnglishQuestions.list[questionNumber].optionA, for: UIControlState.normal)
                    choiceBButton.setTitle(allEnglishQuestions.list[questionNumber].optionB, for: UIControlState.normal)
                    choiceCButton.setTitle(allEnglishQuestions.list[questionNumber].optionC, for: UIControlState.normal)
                    //            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
                    selectedAnswer = allEnglishQuestions.list[questionNumber].answer
                    updateUI()
                }else {
                    alertRestart()
            }
            }
         else   if detectSection == detectMaterial.french {
                if questionNumber <= allFrenchQuestions.list.count - 1{
                    //            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
                    questionLabel.text = allFrenchQuestions.list[questionNumber].questionText
                    choiceAButton.setTitle(allFrenchQuestions.list[questionNumber].optionA, for: UIControlState.normal)
                    choiceBButton.setTitle(allFrenchQuestions.list[questionNumber].optionB, for: UIControlState.normal)
                    choiceCButton.setTitle(allFrenchQuestions.list[questionNumber].optionC, for: UIControlState.normal)
                    //            choiceBButton.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
                    selectedAnswer = allFrenchQuestions.list[questionNumber].answer
                    updateUI()
                }else {
                  alertRestart()
            }
            
        }
}
    
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allMathQuestions.list.count)"
    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    func alertRestart() {
        let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
        let okAction = UIAlertAction(title: "No", style: .default, handler: {action in return})
        alert.addAction(restartAction)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    }

