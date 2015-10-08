//
//  CardsViewController.swift
//  Tindr
//
//  Created by Saurabh Shah on 10/8/15.
//  Copyright © 2015 Saurabh Shah. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var navImagView: UIImageView!
    @IBOutlet weak var actionImageView: UIImageView!
    @IBOutlet weak var cardImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPanCardImageView(panGestureRecognizer: UIPanGestureRecognizer) {
        let point = panGestureRecognizer.locationInView(self.cardImageView)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
