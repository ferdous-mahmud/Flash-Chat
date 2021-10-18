//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Ferdous Mahmud Akash on 10/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var messageBouble: UIView!
    @IBOutlet weak var avaterImage: UIImageView!
    @IBOutlet weak var lable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBouble.layer.cornerRadius = messageBouble.frame.size.height / 5
        messageBouble.frame.width = est
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
