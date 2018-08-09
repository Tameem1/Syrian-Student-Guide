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
    
    var ques = ""
    var choiceA = ""
    var choiceB = ""
    var choiceC = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = ques
        choiceAButton.setTitle(choiceA, for: .normal)
        choiceBButton.setTitle(choiceB, for: .normal)
        choiceCButton.setTitle(choiceC, for: .normal)

    }
}
