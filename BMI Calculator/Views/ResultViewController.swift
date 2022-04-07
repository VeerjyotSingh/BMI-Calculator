//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Veerjyot Singh on 25/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String? = nil

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet var bg: UIView!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text=bmiValue
        
        if Float(bmiValue!)! < 18.5 {
           adviceLabel.text = "Eat More Snacks And Enjoy"
            bg.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            
        }else if Float(bmiValue!)! < 24.9 {
            adviceLabel.text = "Completely Fine"
            bg.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }else if Float(bmiValue!)! < 29.9{
            adviceLabel.text = "Stop eating those snacks"
            bg.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        }else {
            adviceLabel.text = "Do some morning exercise"
            bg.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    
    

}
}
