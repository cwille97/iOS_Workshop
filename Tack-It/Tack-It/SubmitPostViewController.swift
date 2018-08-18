//
//  SubmitPostViewController.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/17/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit

class SubmitPostViewController: UIViewController {

   
    
    @IBOutlet weak var postTitle: UITextField! // variable for the post title
    @IBOutlet weak var postDescription: UITextView! // variable for the post description
    
    
    @IBAction func cancelPost(_ sender: Any) {
        // code to clear text fields and return to browsing screen
    }
    
    @IBAction func submitPost(_ sender: Any) {
        // code to push the data to FireBase, clear text fields, and return to browsing screen
    }
    
    
}
