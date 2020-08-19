//
//  TableViewCell.swift
//  GroceryExpenses
//
//  Created by Apple on 16/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var ModuleImage: UIImageView!
    @IBOutlet weak var ModuleLable: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
