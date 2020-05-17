//
//  SimpleFlipView.swift
//  SimpleFlipView
//
//  Created by Javal Nanda on 5/5/17.
//  Copyright © 2017 Javal Nanda. All rights reserved.
//

import UIKit

class SimpleFlipView: UIView {

    // Front View
    var frontView: UIView = UIView() {
        didSet {
            self.addSubview(frontView)
        }
    }
    
    // Back View
    var backView: UIView = UIView() {
        didSet {
            
        }
    }
    
    // Set animation duration for transition
    var animationDuration: Double = 0.5
    
    // Set transition option
    var transitionStyle: UIView.AnimationOptions = .transitionFlipFromRight
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        flipView()
    }
    
    func flipView()
    {
        UIView.transition(from: self.frontView.isDescendant(of: self) ? self.frontView : self.backView, to: self.frontView.isDescendant(of: self) ? self.backView : self.frontView, duration: animationDuration, options: transitionStyle) { (completed) in
        }
    }

}
