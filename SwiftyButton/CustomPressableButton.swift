//
//  CustomPressableButton.swift
//  SwiftyButton
//
//  Created by Loïs Di Qual on 11/25/15.
//  Copyright © 2015 TakeScoop. All rights reserved.
//

import Foundation

open class CustomPressableButton: PressableButton {
    
    public let customContentView = UIView()
    
    private var customContentViewTopConstraint: NSLayoutConstraint?
    private var customContentViewBottomConstraint: NSLayoutConstraint?
    
    // @hack Intercept all touches on subviews
    override open func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if let _ = super.hitTest(point, with: event) {
            return self
        }
        return nil
    }
    
    override func updateTitleInsets() {
        super.updateTitleInsets()
        customContentViewTopConstraint?.constant = titleEdgeInsets.top
        customContentViewBottomConstraint?.constant = titleEdgeInsets.bottom
    }
    
    override func configure() {
        super.configure()
        
        customContentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(customContentView)
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[contentView]|", options: [], metrics: nil, views: ["contentView": customContentView])
        customContentViewTopConstraint = verticalConstraints[0]
        customContentViewBottomConstraint = verticalConstraints[1]
        addConstraints(verticalConstraints)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[contentView]|", options: [], metrics: nil, views: ["contentView": customContentView]))
    }
}