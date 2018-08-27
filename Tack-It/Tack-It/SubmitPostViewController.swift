//
//  SubmitPostViewController.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/17/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit
import Firebase

class SubmitPostViewController: UIViewController {
    
      var handle: AuthStateDidChangeListenerHandle?
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated);
        
        // Begin Firebase authentication listener
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            // ...
        }
        // End Firebase authentication listener
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Removing Firebase authentication listener
        Auth.auth().removeStateDidChangeListener(handle!)
    }

   
    
    @IBOutlet weak var postTitle: UITextField! // variable for the post title
    @IBOutlet weak var postDescription: UITextView! // variable for the post description
    
    
    @IBAction func cancelPost(_ sender: Any) {
        // code to clear text fields and return to browsing screen
        postTitle.text = ""
        postDescription.text = ""
        performSegue(withIdentifier: "cancelSegue", sender: self)
    }
    
    @IBAction func submitPost(_ sender: Any) {
        // code to push the data to FireBase
        
        //clear text fields and return to browsing screen
        postTitle.text = ""
        postDescription.text = ""
        performSegue(withIdentifier: "submitSegue", sender: self)
    }
    
    
    
}
