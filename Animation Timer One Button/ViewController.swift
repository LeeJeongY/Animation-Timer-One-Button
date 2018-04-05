//
//  ViewController.swift
//  Animation Timer One Button
//
//  Created by D7703_23 on 2018. 4. 5..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    var check = 0
    var checking = false
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame1.png")
        imageCounter.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playstop(_ sender: Any) {
        if checking == false {
            checking = true
            myTimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        } else {
            checking = false
            myTimer.invalidate()
        }
    }
    
    @objc func doAnimation() {
        
        if counter == 5 {
            check = 0
        } else if counter == 1 {
            check = 1
        }
    if check == 1 {
        counter = counter + 1
    } else if check == 0 {
        counter = counter - 1
    }
    myImageView.image = UIImage(named: "frame\(counter).png")
    imageCounter.text = String(counter)
    }
}


