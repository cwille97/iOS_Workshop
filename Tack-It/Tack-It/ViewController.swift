//
//  ViewController.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/15/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBAction func loginSubmit(_ sender: Any) {
        // put a function call here that will have firebase verify if the user credentials are valid
        
        // if user credentials are valid load the main board screen
    }
    
    @IBAction func signUpSubmit(_ sender: Any) {
        // function call here that will create the user an account with the given credentials and load the main board screen
    }
    
}

