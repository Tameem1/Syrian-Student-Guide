//
//  ViewController.swift
//  Student Guide Syria
//
//  Created by Make school on 7/17/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mathButton: UIButton!
    @IBOutlet var arabicButton: UIButton!
    @IBOutlet var chemistryButton: UIButton!
    @IBOutlet var englishButton: UIButton!
    @IBOutlet var frenchButton: UIButton!
    @IBOutlet var physicsButton: UIButton!
    
    let materials = MaterialsVC()
    
    @IBAction func arabicButtonTapped(_ sender: Any) {
     
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mathButton.layer.cornerRadius = 35
        arabicButton.layer.cornerRadius = 35
        englishButton.layer.cornerRadius = 35
        frenchButton.layer.cornerRadius = 35
        chemistryButton.layer.cornerRadius = 35
        physicsButton.layer.cornerRadius = 35
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let materialController = segue.destination as! MaterialsVC
        if let identifier = segue.identifier {
            if identifier == "toArabicSection" {
                print("arabic")
                materialController.navigationItem.title = "Arabic"
            }
            else if identifier == "toMathSection" {
                print("Math")
                materialController.navigationItem.title = "Math"
            }
            else if identifier == "toChemistrySection" {
                materialController.navigationItem.title = "Chemistry"
                print("Chemistry")
            }
            else if identifier == "toPhysicsSection" {
                materialController.navigationItem.title = "Physics"
            }
            else if identifier == "toEnglishSection" {
                materialController.navigationItem.title = "English"
            }
            else if identifier == "toFrenchSection" {
                materialController.navigationItem.title = "French"
            }
        }
    }

}

