//
//  PokemonTableViewCell.swift
//  tableSwift
//
//  Created by Jonas Junior on 16/08/21.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var labelEsqueda: UILabel!
    @IBOutlet weak var labelMeio: UILabel!
    @IBOutlet weak var imagemDireita: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
