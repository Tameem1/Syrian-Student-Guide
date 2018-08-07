//
//  LessonsCell.swift
//  Student Guide Syria
//
//  Created by Make school on 7/25/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit

protocol VideoCellDelegate {
    
    func didTapWatchNow(url: String)
}
class LessonsCell: UITableViewCell {
    @IBOutlet weak var lessonsTitle: UILabel!
    var videoItem: Lesson!
    var delegate: VideoCellDelegate?
    
    func setLesson(lesson: Lesson)  {
        videoItem = lesson
        lessonsTitle.text = lesson.title
    }
    @IBAction func watchNowTapped(_ sender: UIButton) {
//        delegate?.didTapWatchNow(url: videoItem.url)
    }
}
