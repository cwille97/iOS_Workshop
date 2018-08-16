//
//  ViewControllerTableViewCell.swift
//  Tack-It
//
//  Created by Cedric Wille on 8/16/18.
//  Copyright © 2018 Cedric Wille. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func readPostButton(_ sender: Any) {
        // this button covers the entire post and is invisible so that when the cell is clicked it will make the post pop up
    }
}
