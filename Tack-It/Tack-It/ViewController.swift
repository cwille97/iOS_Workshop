//
//  ViewController.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/15/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        return(cell)
    }
    
    
    /* let list = ["milk", "honey", "apples", "bread"] // a list of items to populate our table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count) // returns the number of items in the list so we know how many rows we need in our table
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell") // gives our cell the default style and assigns it to our prototype cell that we named cell
        cell.textLabel?.text = list[indexPath.row] // sets the text label as the value in our list at each row
        return(cell) // return this cell
    } */
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var userName: UITextField! // variable for the username
    @IBOutlet weak var passWord: UITextField! // variable for the password
    
    @IBAction func loginSubmit(_ sender: Any) {
        // use Firebase authentication to validate credentials
    }
    
    @IBAction func signUpSubmit(_ sender: Any) {
        // use Firebase to create the user an account
    }
    
    @IBAction func logOut(_ sender: Any) {
        // log out the user, return to home screen
    }
    
    @IBAction func submitPost(_ sender: Any) {
        // load up a form to create a post
    }
}

