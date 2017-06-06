//
//  ViewController.swift
//  NestedStackViewsShowAndHide
//
//  Created by Bart van Kuik on 06/06/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sectionView: UIView!
    @IBOutlet weak var groupView: UIView!

    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        UIView.animate(withDuration: 0.33) {
            self.sectionView.isHidden = !self.sectionView.isHidden
        }
    }

    @IBAction func button2TouchUpInside(_ sender: UIButton) {
        UIView.animate(withDuration: 0.33) {
            self.groupView.isHidden = !self.groupView.isHidden
        }
    }

    override func viewDidLoad() {
    }
}

