//
//  MaterialsVC.swift
//  Student Guide Syria
//
//  Created by Make school on 7/22/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit
class MaterialsVC : UIViewController{
    
    let lessons = LessonsArray()
    
    var myString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
      //  materialLabel.text = myString
     
       
    }
    
  override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let identifier = segue.identifier {
            if identifier == "toBooksSection" {
    let booksController = segue.destination as! PDFDisplayVC
        
        if navigationItem.title == "Math" {
            booksController.mathBookURL = URLRequest(url: booksController.mathBook!)
            
           
        }
        else if navigationItem.title == "Arabic" {
            booksController.arabicBookURL = URLRequest(url: booksController.arabicBook!)
            
    }
        else if navigationItem.title == "Chemistry" {
            booksController.chemistryBookURL = URLRequest(url: booksController.chemistryBook!)
                }
        else if navigationItem.title == "Physics" {
            booksController.physicsBookURL = URLRequest(url: booksController.physicsBook!)
            
                }
        else if navigationItem.title == "English" {
            booksController.englishBookURL = URLRequest(url: booksController.englishBook!)
            
                }
        else if navigationItem.title == "French" {
            booksController.frenchBookURL = URLRequest(url: booksController.frenchBook!)
            
                }
            }
            
            
            
            if identifier == "toLessonsSection" {
            let lessonsController = segue.destination as! LessonsVC
                if navigationItem.title == "Math"{
                    lessonsController.detectSection = 1
    }
                else if navigationItem.title == "Arabic" {
                    lessonsController.detectSection = 2
     }
                else if navigationItem.title == "Chemistry"{
                    lessonsController.detectSection = 3
                }
                else if navigationItem.title == "Physics"{
                    lessonsController.detectSection = 4
                }
                else if navigationItem.title == "English"{
                    lessonsController.detectSection = 5
                }
                else if navigationItem.title == "French"{
                    lessonsController.detectSection = 6
                }
                
    }
    }
    }
}
