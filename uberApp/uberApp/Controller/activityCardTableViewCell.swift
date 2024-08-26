//
//  activityCardTableViewCell.swift
//  uberApp
//
//  Created by Andrea Leal on 8/22/24.
//

import UIKit

class activityCardTableViewCell: UITableViewCell {

    @IBOutlet weak var cardActivity: UIView!
    
    @IBOutlet weak var namePlaceLabel: UILabel!
    
    @IBOutlet weak var datePlaceLabel: UILabel!
    
    @IBOutlet weak var pricePlaceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        cardStyles()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cardStyles()  {
       
    }
    
}
