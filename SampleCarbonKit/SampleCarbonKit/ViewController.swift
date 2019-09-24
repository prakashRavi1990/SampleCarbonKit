//
//  ViewController.swift
//  SampleCarbonKit
//
//  Created by user on 24/09/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import CarbonKit

class ViewController: UIViewController, CarbonTabSwipeNavigationDelegate {
     @IBOutlet weak var segmentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabSwipe = CarbonTabSwipeNavigation(items: ["HELLO WORLD", "Tab", "Another One"], delegate: self)
        tabSwipe.setTabExtraWidth(40)
        tabSwipe.insert(intoRootViewController: self,andTargetView: self.segmentView)
        // Do any additional setup after loading the view.
    }

    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        guard let storyboard = storyboard else { return UIViewController() }
        if index == 0 {
            return storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        }
        return storyboard.instantiateViewController(withIdentifier: "SecondViewController")
    }
}

