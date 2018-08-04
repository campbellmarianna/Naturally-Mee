//
//  ProductListTableViewCell.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 8/2/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {

    //MARK: IBOutlets:
    
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
