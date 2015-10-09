//
//  DraggableImageView.swift
//  Tindr
//
//  Created by Saurabh Shah on 10/8/15.
//  Copyright © 2015 Saurabh Shah. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {
    
    @IBOutlet weak var cardImageView: UIImageView!
    var originalCenter: CGPoint!
    var startPoint: CGPoint!
    @IBOutlet var contentView: UIView!
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        initSubviews()
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews(){
        let nib = UINib(nibName: "DraggableView", bundle: nil)
        nib.instantiateWithOwner(self, options:
        nil)
        self.contentView.frame = bounds
        addSubview(self.contentView)
        self.originalCenter = self.cardImageView.center
    }
    
    
    @IBAction func onPanCardImageView(panGestureRecognizer: UIPanGestureRecognizer) {
        let point = panGestureRecognizer.locationInView(self.contentView)
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            startPoint = point
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            var newPoint = CGPoint(x: originalCenter.x - (startPoint.x - point.x), y: originalCenter.y)
            self.cardImageView.center = newPoint
            print("Gesture changed at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            self.cardImageView.center = self.originalCenter
            print("Gesture ended at: \(point)")
        }
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
