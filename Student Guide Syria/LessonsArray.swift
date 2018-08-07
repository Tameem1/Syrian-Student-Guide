//
//  LessonsArray.swift
//  Student Guide Syria
//
//  Created by Make school on 7/19/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit
class LessonsArray {
    
    /*------Lessons Araays-------*/
    var mathLessons  = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                        [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                        [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                        [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/")!)]]
    
    
    var arabicLessons = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                       [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                       [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                       [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/")!)]]
    
    
    var chemistryLessons = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/")!)]]
    
    
    var physicsLessons = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                         [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/")!)]]
    
    
    var englishLessons = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/")!)]]
    
    
    var frenchLessons = [[Lesson(url: URL(string: "https://www.google.com/")!, title: "1", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "2", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "3", papers: URL(string: "https://www.facebook.com/")!)],
                          [Lesson(url: URL(string: "https://www.google.com/")!, title: "4", papers: URL(string: "https://www.facebook.com/"))]]
}



struct Lesson {
    var url : URL
    var title : String
    var papers : URL?
}

//[
//    ["1. عموميات عن المتتاليات" , "2. البرهان بالتدريج أو بالاستقراء الرياضي", "تمرينات ومسائل"],
//    ["1. نهاية تابع عند اللانهاية", "2. نهاية تابع عند عدد حقيقي", "3. العمليات على النهايات", "4. مبرهنات المقارنة", "5. نهاية تابع مركب", "6. المقارب المائل","7. الاستم ارر","8. التوابع المستمرة وحل المعادلات"]
//]
