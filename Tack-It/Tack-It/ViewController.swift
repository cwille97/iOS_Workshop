//
//  ViewController.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/15/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
      var handle: AuthStateDidChangeListenerHandle?
    
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Begin Firebase authentication listener
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            // ...
        }
        // End Firebase authentication listener
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Removing the Firebase authentication listener
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    @IBOutlet weak var email: UITextField! // user email
    @IBOutlet weak var password: UITextField! // user password
    
    
    @IBAction func emailLogin(_ sender: Any) {
        // use Firebase authentication to validate credentials
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
        }
        // Load the main home screen
        performSegue(withIdentifier: "mainSegue", sender: self)
    }
    
    @IBAction func didCreateAccount(_ sender: Any) {
        // use Firebase to create the user an account
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult, error) in
            // ...
            guard let user = authResult?.user else { return }
        }
        // use Firebase to login the user
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
        }
        // Load the main home screen
        performSegue(withIdentifier: "mainSegue", sender: self)
    }

    
    @IBAction func logOut(_ sender: Any) {
        // log out the user, return to home screen
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        // Load the login screen
        performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    
    @IBAction func submitPost(_ sender: Any) {
        // load up a form to create a post
        performSegue(withIdentifier: "createSegue", sender: self)
    }
}

