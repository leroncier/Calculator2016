//
//  ViewController.swift
//  Calculator2016
//
//  Created by Charles Roncier on 02/12/2016.
//  Copyright © 2016 Charles Roncier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false // for wiping out the display
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let currentlyInDisplay = display.text!
        display.text = currentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    var displayValue:Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue) // newValue est la valeur de displayValue
        }
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }


}

