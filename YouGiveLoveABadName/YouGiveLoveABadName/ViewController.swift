//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bonjoviImageView: UIImageView!
    var HieghtConstrain : NSLayoutConstraint!
    var imageExpand: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.bonjoviImageView.translatesAutoresizingMaskIntoConstraints = false
        self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
        self.HieghtConstrain.isActive = true
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        if self.imageExpand == false {

        UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.0, options: .transitionCurlUp, animations: {
            self.HieghtConstrain.isActive = false
            self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3)
            self.HieghtConstrain.isActive = true
            self.view.layoutIfNeeded()
            
            }) { (success) in
                self.imageExpand = true
                self.HieghtConstrain.isActive = false
                self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1)
                self.HieghtConstrain.isActive = true
                self.view.layoutIfNeeded()
        }
        }
        
//        if self.imageExpand == false {
//            print("Expand animation")
//            UIView.animateKeyframes(withDuration: 0.6, delay: 0.0, options: .calculationModeLinear, animations: {
//                
//                print("first step")
//                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3.0, animations: {
//                    
//                    self.HieghtConstrain.isActive = false
//                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3)
//                    self.HieghtConstrain.isActive = true
//                    self.view.layoutIfNeeded()
//                     print(self.HieghtConstrain.multiplier)
//                })
//                print("second step")
//                UIView.addKeyframe(withRelativeStartTime: 1/3.0, relativeDuration: 1/3.0, animations: {
//                    
//                    self.HieghtConstrain.isActive = false
//                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.1)
//                    self.HieghtConstrain.isActive = true
//                    self.view.layoutIfNeeded()
//                    
//                })
//                print("third step")
//                UIView.addKeyframe(withRelativeStartTime: 2/3.0, relativeDuration: 1/3.0, animations: {
//                    self.HieghtConstrain.isActive = false
//                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1)
//                    self.HieghtConstrain.isActive = true
//                    self.view.layoutIfNeeded()
//                })
//                
//            }){ (success) in
//                self.imageExpand = true
//            }
//        }
        if self.imageExpand == true {
            UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: .calculationModeLinear, animations: {
                
                
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3.0, animations: {
                    
                    self.HieghtConstrain.isActive = false
                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.1)
                    self.HieghtConstrain.isActive = true
                    self.view.layoutIfNeeded()
                })
                UIView.addKeyframe(withRelativeStartTime: 1/3.0, relativeDuration: 1/3.0, animations: {
                    
                    self.HieghtConstrain.isActive = false
                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3)
                    self.HieghtConstrain.isActive = true
                    self.view.layoutIfNeeded()
                    
                })
                
                UIView.addKeyframe(withRelativeStartTime: 2/3.0, relativeDuration: 1/3.0, animations: {
                    self.HieghtConstrain.isActive = false
                    self.HieghtConstrain = self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
                    self.HieghtConstrain.isActive = true
                    self.view.layoutIfNeeded()
                })
                
            }){ (success) in
                self.imageExpand = false
            }
            
        }
    }
}

