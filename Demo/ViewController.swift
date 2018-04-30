//
//  ViewController.swift
//  Demo
//
//  Created by Nguyen Minh Tam on 4/30/18.
//  Copyright © 2018 Nguyen Minh Tam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Var
    var score: Int = 0
    var timer: Timer!
    
    //Outlet
    @IBOutlet weak var UILabelScore: UILabel!
    @IBOutlet weak var UILabelEnd: UILabel!
    @IBOutlet weak var UImageViewBird: UIImageView!
    
    //Action
    @IBAction func TapBird(_ sender: AnyObject) {
        score += 1
        UILabelScore.text = "Score: \(score)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UILabelScore.text = "Score: \(score)"
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.chay), userInfo: nil, repeats: true)
    }
    
    func chay() {
        UImageViewBird.frame.origin.y += 10
        if (UImageViewBird.frame.origin.y == UILabelEnd.frame.origin.y) {
            timer.invalidate()
            timer = nil
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

