//
//  PDFDisplay.swift
//  Student Guide Syria
//
//  Created by Make school on 7/19/18.
//  Copyright © 2018 tamem. All rights reserved.
//

import Foundation
import UIKit
import WebKit
class PDFDisplayVC : UIViewController {
    //OUTLET
    @IBOutlet var webView: WKWebView!
    var mathBookURL: URLRequest?
    var arabicBookURL : URLRequest?
    var chemistryBookURL : URLRequest?
    var physicsBookURL : URLRequest?
    var englishBookURL : URLRequest?
    var frenchBookURL : URLRequest?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Books"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        if mathBookURL != nil {
          webView.load(mathBookURL!)
        }else if arabicBookURL != nil {
          webView.load(arabicBookURL!)
        }else if chemistryBookURL != nil {
          webView.load(chemistryBookURL!)
        }else if physicsBookURL != nil {
            webView.load(physicsBookURL!)
        }else if chemistryBookURL != nil {
            webView.load(englishBookURL!)
        }else if chemistryBookURL != nil {
            webView.load(frenchBookURL!)
        }
    }
    
    /*--------URL REQUEST--------*/
    let mathBook = URL(string: "https://drive.google.com/open?id=1RnX7AOJkH4-Q6z2cb6pUSN-kJW5r3ufW")
    let arabicBook = URL(string: "https://drive.google.com/open?id=1cMMwqMCGnH4oAkcYodnP1znbIigjrobo")
    let chemistryBook = URL(string: "https://drive.google.com/open?id=1QxWpVoU-nCt5ZVSIutyuufdlyE7tlBwO")
    let physicsBook = URL(string: "https://drive.google.com/open?id=1UpO9rH46Kn4uzLBmiNNJ_JdK-smP-xSB")
    let englishBook = URL(string: "https://drive.google.com/open?id=1sL5ZdFdTIjZNANhQlZ1h73coz97uNjXY")
    let frenchBook = URL(string: "")
    
}
