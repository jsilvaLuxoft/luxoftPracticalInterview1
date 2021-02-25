//
//  TodoTableViewCell.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/03/20.
//

import UIKit

// TODO: Implement configuration of the cell and create the UI in the .xib file

class TodoTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dueDateLabel: UILabel!
    @IBOutlet var completeSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
