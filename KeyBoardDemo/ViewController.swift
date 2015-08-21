//
//  ViewController.swift
//  KeyBoardDemo
//
//  Created by Kristian Secor on 3/4/15.
//  Copyright (c) 2015 Kristian Secor. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var keyBoardDemo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.keyBoardDemo.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 //BELOW KEY SETS RESIGNING RESPONDER
 func textFieldShouldReturn(textField: UITextField) -> Bool {
   self.keyBoardDemo.resignFirstResponder()
    return true
}
    
    
 override func touchesBegan(touches: NSSet, withEvent event:UIEvent) {
    self.view.endEditing(true)
    }


}

