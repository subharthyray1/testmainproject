//
//  FilterTableViewCell.swift
//  CarChat24
//
//  Created by Subharthy Ray on 14/08/17.
//  Copyright © 2017 ChatLead.com. All rights reserved.
//

import UIKit

class ChatSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFilterTitle: UILabel!
    @IBOutlet weak var lblFilterSubTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
