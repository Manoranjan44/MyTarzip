//
//  ViewController.swift
//  MyTarzip
//
//  Created by Manoranjan on 27/06/19.
//  Copyright © 2019 mano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        lbl.text = "A"
        
        let barBtnItem = MSBadgeBarButtonItem(customView: lbl)
        
        barBtnItem.badgeValue = 2
        
        navigationItem.rightBarButtonItem = barBtnItem
    }

}

