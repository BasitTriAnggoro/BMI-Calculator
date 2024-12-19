//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        heightLabel.text = calculatorBrain.getBMIHeight(height: sender.value)
    }
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        weightLabel.text = calculatorBrain.getBMIWeight(weight: sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.value = calculatorBrain.bmi?.value ?? 0.0
        resultVC.advice = calculatorBrain.bmi?.advice ?? "No Advice"
        resultVC.color = calculatorBrain.bmi?.color ?? .systemBlue
    }

}

