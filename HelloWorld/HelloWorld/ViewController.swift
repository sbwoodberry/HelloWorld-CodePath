//
//  ViewController.swift
//  HelloWorld
//
//  Created by Samuel Woodbury on 9/12/18.
//  Copyright © 2018 Samuel Woodbury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.red
        
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if (textField.text == "") {
            textLabel.text = "Goodbye!";
        }
        else {
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello World!"
        textLabel.textColor = UIColor.black
        
        view.backgroundColor = backgroundColor
        
        
    }
    
    
}

