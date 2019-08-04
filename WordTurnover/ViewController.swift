//
//  ViewController.swift
//  WordTurnover
//
//  Created by alekseykolesnik on 24/04/2019.
//  Copyright © 2019 alekseykolesnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    
  
    @IBAction func reversButton(_ sender: UIButton) {
        let text = textField.text!
        labelTextField.text! = reversString(str: text)
    }
    
    
    @IBAction func mixUpButton(_ sender: UIButton) {
        let text = textField.text!
        
        labelTextField.text! = mixWord(word: text)
    }
    
    @IBOutlet weak var labelTextField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


    //  Shuffle words
    func mixWord(word: String) -> String {
        let chars = Array(word)
        var result = ""
        result = String(chars.shuffled())
        
        return result
    }
    
    //  Revers string
    func reversString(str: String) -> String {
        let reversStr = String(str.reversed())
        
        return reversStr
    }
    
    
    // Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
}

