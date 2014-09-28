//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Anthony D'Andrea on 9/27/14.
//  Copyright (c) 2014 PWW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoesSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text =
            "\(mensShoesSizeTextField.text.toInt()! + 30)"
            + " in European Shoe Size"
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text =
            "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
}

