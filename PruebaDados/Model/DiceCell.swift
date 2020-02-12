//
//  DiceCell.swift
//  PruebaDados
//
//  Created by Cristian Sedano Arenas on 03/02/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class DiceCell: UITableViewCell {
    
    @IBOutlet weak var diceImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func addImage(dicesImage: ImageDice) {
        
        diceImage.image = dicesImage.imageDice
    }
}
