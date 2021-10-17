//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Ferdous Mahmud Akash on 11/10/2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

// MARK: - Animated text (Manual Process)

        titleLabel.text = ""

        let titleText = K.appName
        var charIndex = 0.0

        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    
    }
}
