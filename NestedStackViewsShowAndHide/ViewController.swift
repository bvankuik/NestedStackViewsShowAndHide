//
//  ViewController.swift
//  NestedStackViewsShowAndHide
//
//  Created by Bart van Kuik on 06/06/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var addRemoveViewButton: UIButton!

    private let dummyView = UIView()

    @IBAction func button2TouchUpInside(_ sender: UIButton) {
        UIView.animate(withDuration: 0.33) {
            self.label.isHidden = !self.label.isHidden
        }
    }

    @IBAction func addViewButtonTouchUpInside(_ sender: UIButton) {
        if let dv = self.dummyView.superview {
            self.addRemoveViewButton.setTitle("Add dummy view", for: .normal)
            dv.removeFromSuperview()
        } else {
            self.addRemoveViewButton.setTitle("Remove dummy view", for: .normal)
            self.stackView.addArrangedSubview(dummyView)
        }
    }

    override func viewDidLoad() {
        self.addRemoveViewButton.setTitle("Add view", for: .normal)
    }
}

