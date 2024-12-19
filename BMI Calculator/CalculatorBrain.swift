//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Basit Tri Anggoro on 10/11/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi:BMI?
    
    func getBMIWeight(weight: Float)->String{
        let weight = "\(String(format: "%.0f", weight))kg"
        return weight
    }
    
    func getBMIHeight(height: Float)->String{
        let height = "\(String(format: "%.2f", height))m"
        return height
    }
    
    func get2Decimal(number: Float)->Float{
        let formattedNumber = Float(String(format: "%.2f", number))!
        return formattedNumber
    }
    
    mutating func calculateBMI(height:Float, weight:Float)->BMI{
        let BMIValue = weight/(height*height)
        if BMIValue <= 24.9999 && BMIValue >= 18.5{
            bmi = BMI(advice: "Berat Ideal", value: get2Decimal(number: BMIValue), color: .systemBlue)
        }else if BMIValue >= 25 && BMIValue <= 29.9999{
            bmi = BMI(advice: "Berat Berlebih", value: get2Decimal(number: BMIValue), color: .systemOrange)
        }else if BMIValue >= 30{
            bmi = BMI(advice: "Obesitas", value: get2Decimal(number: BMIValue), color: .systemPink)
        }else{
            bmi = BMI(advice: "Berat Rendah", value: get2Decimal(number: BMIValue), color: .systemPink)
        }
        return bmi ?? BMI(advice: "No Advice", value: 0.0, color: .systemGray)
    }
}
