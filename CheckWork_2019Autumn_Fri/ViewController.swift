//
//  ViewController.swift
//  CheckWork_2019Autumn_Fri
//
//  Created by 大林拓実 on 2019/11/29.
//  Copyright © 2019 Obayashi Takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        label.textColor = .black
    }
    
    @IBAction func plus(){
        number += 1
        checkLabelColor()
        label.text = String(number)
    }

    @IBAction func minus(){
        number -= 1
        checkLabelColor()
        label.text = String(number)
    }

    @IBAction func multiple(){
        number *= 2
        checkLabelColor()
        label.text = String(number)
    }

    @IBAction func devide(){
        number /= 2
        checkLabelColor()
        label.text = String(number)
    }

    @IBAction func clear(){
        number = 0
        checkLabelColor()
        label.text = String(number)
    }

    func checkLabelColor() {
        if number >= 10 {
            label.textColor = .red
        }
        else if number <= -10 {
            label.textColor = .blue
        }
        else {
            label.textColor = .black
        }
    }

}

