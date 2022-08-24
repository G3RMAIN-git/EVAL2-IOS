//
//  TabTableViewCell.swift
//  EVAL2-IOS
//
//  Created by Germain Buchet on 24/08/2022.
//

import UIKit

class TabTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewPokemon: UIImageView!
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
