//
//  CuentaTableViewCell.swift
//  uberApp
//
//  Created by Andrea Leal on 8/26/24.
//

import UIKit

class CuentaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var opcionPerfilCard: UIStackView!
    
    @IBOutlet weak var logoOption: UIImageView!
    
    @IBOutlet weak var textOption: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
