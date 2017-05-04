//
//  ViewController.swift
//  SimpleFlipView
//
//  Created by Javal Nanda on 5/5/17.
//  Copyright © 2017 Javal Nanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //SimpleFlipView, frontView and backView added via storyboard
    @IBOutlet weak var sbFlipView: SimpleFlipView!
    @IBOutlet weak var sbSecondFlipView: SimpleFlipView!
    @IBOutlet var frontView: UIView!
    @IBOutlet var backView: UIView!
    @IBOutlet var secondFvFrontView: UIView!
    @IBOutlet var secondFvBackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Adding SimpleFlipView programmatically
        // Make sure frontView, backView and the flipView are of same dimensions
        let viewOne = UIView.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        let viewTwo = UIView.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        
        viewOne.backgroundColor = UIColor.yellow
        viewTwo.backgroundColor = UIColor.blue
        
        let flipView = SimpleFlipView.init(frame: CGRect(origin: CGPoint(x: 115, y: 100), size: CGSize(width: 100, height: 100)))
        flipView.frontView = viewOne
        flipView.backView = viewTwo
        flipView.transitionStyle = UIViewAnimationOptions.transitionCurlUp
        self.view .addSubview(flipView)
        
        // Setting up SimpleFlipView added via Storyboard
        sbFlipView.frontView = self.frontView
        sbFlipView.backView = self.backView
        sbFlipView.transitionStyle = UIViewAnimationOptions.transitionFlipFromLeft
        
        // Setting up second SimpleFlipView added via Storyboard
        sbSecondFlipView.frontView = self.secondFvFrontView
        sbSecondFlipView.backView = self.secondFvBackView
        sbSecondFlipView.animationDuration = 1.0
        sbSecondFlipView.transitionStyle = UIViewAnimationOptions.transitionCrossDissolve
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

