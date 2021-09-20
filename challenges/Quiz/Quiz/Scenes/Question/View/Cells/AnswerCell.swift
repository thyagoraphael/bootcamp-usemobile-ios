//
//  AnswerCell.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class AnswerCell: UITableViewCell {
    
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(model: AnswerModel) {
        
        labelName.text = model.name
        
        viewBackground.layer.cornerRadius = 10
        viewBackground.layer.borderWidth = 1
        
        setStyle(model.style)
    }
    
    func setStyle(_ style: AnswerModel.Style) {
        switch style {
            case .blank:
                viewBackground.backgroundColor = .white
                viewBackground.layer.borderColor = UIColor.gray.cgColor
                
            case .selected:
                viewBackground.backgroundColor = UIColor.purple.withAlphaComponent(0.5)
                viewBackground.layer.borderColor = UIColor.purple.cgColor
                
            case .correct:
                viewBackground.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                viewBackground.layer.borderColor = UIColor.green.cgColor
                
            case .incorrect:
                viewBackground.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                viewBackground.layer.borderColor = UIColor.red.cgColor
        }
    }
}
