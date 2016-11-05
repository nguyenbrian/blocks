//
//  ViewController.swift
//  blocks-2
//
//  Created by Jevin Sidhu on 2016-11-05.
//  Copyright © 2016 Jevin Sidhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var block1 = Block(blockTotal: 5)
        let timer = Timer.new(every: 1.second) {
            block1.countToTen()
        }
        
        while true {
            if block1.blockTotal > 0 {
                timer.start()
                if block1.blockTotal == 0 {
                    break
                }
            }
            print(block1.blockTotal)

            timer.invalidate()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
