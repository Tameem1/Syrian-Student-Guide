//
//  QuizesArray.swift
//  Student Guide Syria
//
//  Created by Make school on 8/3/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit

class QuizesArray {
    var mathQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
    [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "3", choiceC: "4", correctAnswer: 2)],
    [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "7", choiceC: "4", correctAnswer: 3)],
    [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
    [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)],
    [Quiz(title: "Quiz6", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    var arabicQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
                        [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 2)],
                        [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 3)],
                        [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
                        [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    var chemistryQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
                           [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 2)],
                           [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 3)],
                           [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
                           [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    var physicsQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
                         [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 2)],
                         [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 3)],
                         [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
                         [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    var englishQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
                         [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 2)],
                         [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 3)],
                         [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
                         [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    var frenchQuizes = [[Quiz(title: "Quiz1", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 1)],
                        [Quiz(title: "Quiz2", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 2)],
                        [Quiz(title: "Quiz3", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 3)],
                        [Quiz(title: "Quiz4", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 4)],
                        [Quiz(title: "Quiz5", ques: "1+2", choiceA: "3", choiceB: "2", choiceC: "4", correctAnswer: 5)]
    ]
    
}
struct Quiz {
    var title : String
    var ques : String
    var choiceA : String
    var choiceB : String
    var choiceC : String
    var correctAnswer : Int
}
