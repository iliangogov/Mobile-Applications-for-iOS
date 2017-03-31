//
//  ViewController.swift
//  Calculator-Demo
//
//  Created by Iliyan Gogov on 3/31/17.
//  Copyright © 2017 Iliyan Gogov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstNumber.delegate = self
        secondNumber.delegate = self
        self.firstNumber.text = "0"
        self.secondNumber.text = "0"
        self.result.text = "0"
        
        self.firstNumber.keyboardType = .numberPad
        
        self.secondNumber.keyboardType = .numberPad
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }

    @IBAction func calculateOnClick() {
        let firstOperand  = Int(self.firstNumber.text!)!
        let secondOperand = Int(self.secondNumber.text!)!
        
        self.result.text = String(firstOperand + secondOperand)
        }
}

