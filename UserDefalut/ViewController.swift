//
//  ViewController.swift
//  UserDefalut
//
//  Created by mmslab on 2017/2/23.
//  Copyright © 2017年 mmslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet var TopLabel: UILabel!
    @IBOutlet var NumberField: UITextField!
    @IBOutlet var NumberLabel: UILabel!
    @IBAction func SaveButton(sender: AnyObject) {
        
        NSUserDefaults.standardUserDefaults().setObject(NumberField.text, forKey: "PhoneNumber")
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        let Phone = NSUserDefaults.standardUserDefaults().objectForKey("PhoneNumber")
        
        if let num = Phone as? String{
            
            NumberLabel.text = num
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

