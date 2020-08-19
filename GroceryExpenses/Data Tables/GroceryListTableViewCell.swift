//
//  GroceryListTableViewCell.swift
//  GroceryExpenses
//
//  Created by Apple on 19/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class GroceryListTableViewCell: UITableViewCell {
    
    //Mark: - Variables
    @IBOutlet weak var ListIcon: UIImageView!
    @IBOutlet weak var ListLable: UILabel!

        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
