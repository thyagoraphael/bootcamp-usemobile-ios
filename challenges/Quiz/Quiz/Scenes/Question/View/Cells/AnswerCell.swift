//
//  AnswerCell.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class AnswerCell: UITableViewCell {

    
    @IBOutlet var labelTitle: UILabel!
    
    class CheckBox: UIButton {
        // Images
        let checkedImage = UIImage(named: "ic_check_box")! as UIImage
        let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
