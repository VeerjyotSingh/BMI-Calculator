//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    
    var bmiCValue : String?
    
    @IBAction func weightAction(_ sender: UISlider) {
        let weight=String(format:"%.0f",sender.value)
        weightLabel.text="\(weight)Kg"
    }
    @IBAction func heightAction(_ sender: UISlider) {
        let height=String(format:"%.2f",sender.value)
        heightLabel.text="\(height)M"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        let weight = Float(weightSlider.value)
        let height = Float(heightSlider.value)
        let bmi = weight / pow(height, 2)
        print (Int(bmi))
        bmiCValue = String(format: "%.1f",  bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiCValue
        }
        }
    }


