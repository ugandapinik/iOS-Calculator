//
//  ViewController.swift
//  Calculator
//
//  Created by Jewel Mahmud Nimul Shamim on 2018-10-31.
//  Copyright © 2018 Jewel Mahmud Nimul Shamim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var prefOperation: String = "";

    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var operationDisplay: UILabel!
    
    
    @IBAction func displayNumbers(_ sender: UIButton) {
        // check if display content have any item without 0
        if display.text != "0" {
            display.text = display.text! + String(sender.tag - 1);
            numberOnScreen = Double(display.text!)!
        }else{
            // clean the 0 and then append
            display.text = String(sender.tag - 1);
            numberOnScreen = Double(display.text!)!
        }
        
    }
    
    // after selecting operation
    @IBAction func selectOperation(_ sender: UIButton) {
        // updating the operation
        switch sender.tag {
            case 14:
                // the operation is +
                print("+");
                // so we have to add items
                // set the operation display
                operationDisplay.text = "+";
                numberOnScreen = numberOnScreen + Double(display.text!)!;
                // 0 1
                // clear the screen
                display.text = String(numberOnScreen);
            
            default :
                print( "default case");
        
        }

    
    }
    
    // Todo - this will clear the screen
    @IBAction func clearScreen(_ sender: UIButton) {
        // check display have any values
        if display.text != ""{
            // clear the screen
            display.text = String(0);
            
            // set the operation icon will be ""
            operationDisplay = "";
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        display.text = String(0);
        // set the operation sign to empty
        operationDisplay.text = "";
        
    }


}

