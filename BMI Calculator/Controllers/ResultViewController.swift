//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Basit Tri Anggoro on 10/11/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var value:Float?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = String(value ?? 0.0)
        messageLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
