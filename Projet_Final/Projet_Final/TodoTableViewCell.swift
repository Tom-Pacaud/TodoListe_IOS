//
//  TodoTableViewCell.swift
//  Projet_Final
//
//  Created by Tom on 10/01/2023.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var Titre: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Etat: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
