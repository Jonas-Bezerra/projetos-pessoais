//
//  TypeTableViewCell.swift
//  tableSwift
//
//  Created by Jonas Junior on 17/08/21.
//

import UIKit

class TypeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTipo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
