//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 山本ののか on 2020/04/22.
//  Copyright © 2020 Nonoka Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0"
    }

    @IBAction func plus(_ sender: Any) {
        
        count += 1
        countLabel.text = String(count)
        if count >= 10 {
            changeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        
        count -= 1
        countLabel.text = String(count)
        if count <= 0 {
            resetColor()
        }
    }
    
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    
    func resetColor(){
        countLabel.textColor = .white
    }
}

