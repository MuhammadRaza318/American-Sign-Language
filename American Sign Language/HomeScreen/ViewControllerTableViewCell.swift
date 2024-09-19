//
//  ViewControllerTableViewCell.swift
//  American Sign Language
//
//  Created by Raza on 19/09/2024.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet var signView: UIView!
    @IBOutlet var signLabel: UILabel!
    @IBOutlet var signImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        signView.layer.cornerRadius = 16
        signView.layer.borderColor = UIColor.black.cgColor
        signView.layer.borderWidth = 2.0
        signView.clipsToBounds = true
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
    }
}
