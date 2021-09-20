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
        
        viewBackground.layer.cornerRadius = 20
        viewBackground.layer.borderWidth = 1
        
        setStyle(model.style)
    }
    
    func setStyle(_ style: AnswerModel.Style) {
        switch style {
            case .blank:
                let borderColor = UIColor(white: 235.0/255.0, alpha: 1.0)
                viewBackground.backgroundColor = .white
                viewBackground.layer.borderColor = borderColor.cgColor
                labelName.textColor = .black
                
            case .selected:
                let color = UIColor(red: 229.0/255.0, green: 233.0/255.0, blue: 255.0/255.0, alpha: 1.0)
                let borderColor = UIColor(red: 117.0/255.0, green: 140.0/255.0, blue: 255.0/255.0, alpha: 1.0)
                viewBackground.backgroundColor = color
                viewBackground.layer.borderColor = borderColor.cgColor
                labelName.textColor = UIColor(red: 117.0/255.0, green: 140.0/255.0, blue: 255.0/255.0, alpha: 1.0)
                
            case .correct:
                let color = UIColor(red: 229.0/255.0, green: 255.0/255.0, blue: 230.0/255.0, alpha: 1.0)
                let borderColor = UIColor(red: 56.0/255.0, green: 197.0/255.0, blue: 61.0/255.0, alpha: 1.0)
                viewBackground.backgroundColor = color
                viewBackground.layer.borderColor = borderColor.cgColor
                labelName.textColor = UIColor(red: 56.0/255.0, green: 197.0/255.0, blue: 61.0/255.0, alpha: 1.0)
                
            case .incorrect:
                let color = UIColor(red: 255.0/255.0, green: 214.0/255.0, blue: 214.0/255.0, alpha: 1.0)
                let borderColor = UIColor(red: 255.0/255.0, green: 90.0/255.0, blue: 90.0/255.0, alpha: 1.0)
                viewBackground.backgroundColor = color
                viewBackground.layer.borderColor = borderColor.cgColor
                labelName.textColor = UIColor(red: 255.0/255.0, green: 90.0/255.0, blue: 90.0/255.0, alpha: 1.0)
        }
    }
}
