//
//  TableViewCell.swift
//  tableSwift
//
//  Created by Jonas Junior on 16/08/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var numeroPokemon: UILabel!
    @IBOutlet weak var nomePokemon: UILabel!
//    @IBOutlet weak var ImageViewPokemon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        imagemPokemon.layer.cornerRadius = imagemPokemon.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
