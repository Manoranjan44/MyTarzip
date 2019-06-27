//
//  MSBadgeBarButtonItem.swift
//  MyTarzip
//
//  Created by Manoranjan on 27/06/19.
//  Copyright © 2019 mano. All rights reserved.
//

import UIKit

class MSBadgeBarButtonItem: UIBarButtonItem {

    var badgeLabel : UILabel!
    
    init(customView : UIView) {
        super.init()
        self.customView = customView
        self.badgeLabel = UILabel(frame: CGRect(x: customView.frame.size.width-16, y: 0, width: 16, height: 16))
        self.badgeLabel.backgroundColor = .red
        self.badgeLabel.layer.cornerRadius = 8
        self.badgeLabel.layer.masksToBounds = true
        self.badgeLabel.textAlignment = .center
        self.badgeLabel.textColor = .white
        self.badgeLabel.font = UIFont.systemFont(ofSize: 12)
        self.badgeLabel.text = "\(badgeValue)"
        
        self.customView?.addSubview(self.badgeLabel)
    }
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ////////
    func refreshBadge() {
        if badgeValue == 0 && shouldHideBadgeAtZero{
            badgeLabel.isHidden = true
        } else {
            badgeLabel.isHidden = false
        }
    }
    
    /// badgeValue. Default is 0.
    @objc @IBInspectable public var badgeValue: Int = 0 {
        didSet {
            self.badgeLabel.text = "\(badgeValue)"
            refreshBadge()
        }
    }
    /// shouldHideBadgeAtZero. Default is 0.
    @objc @IBInspectable public var shouldHideBadgeAtZero: Bool = true {
        didSet {
            refreshBadge()
        }
    }
}

