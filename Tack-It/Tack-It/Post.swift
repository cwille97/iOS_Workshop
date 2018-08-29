//
//  Post.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/29/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//  In this file we have created a structure for our Posts and then used
//  Protocol oriented programming to allow Firebase to access it

import Foundation
import Firebase

protocol DocumentSerializable {
    init?(dictionary:[String:Any])
}

struct Post {
    var title: String
    var author: String
    var body: String // main body of the post
    var timeStamp: Date
    
    var dictionary:[String:Any] { // allows us to return our structure in the form of a dictionary
        return [
            "title": title,
            "author": author,
            "body": body,
            "timeStamp": timeStamp
        ]
    }
    
    
}

extension Post: DocumentSerializable {
    init?(dictionary:[String:Any]) {
        guard let title = dictionary["title"] as? String,
            let author = dictionary["author"] as? String,
            let body = dictionary["body"] as? String,
            let timeStamp = dictionary["timeStamp"] as? Date
            else {return nil}
        // self.init(dictionary:["title": title, "author": author, "body": body, "timeStamp": timeStamp])
        self.init(title: title, author: author, body: body, timeStamp: timeStamp)
    }
}
