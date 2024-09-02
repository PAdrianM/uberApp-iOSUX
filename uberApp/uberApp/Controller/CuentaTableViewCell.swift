//
//  CuentaTableViewCell.swift
//  uberApp
//
//  Created by Andrea Leal on 8/26/24.
//

import UIKit

class CuentaTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageOptionCuenta: UIImageView!

    @IBOutlet weak var optionName: UILabel!
    
    @IBOutlet weak var optionBoton: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
