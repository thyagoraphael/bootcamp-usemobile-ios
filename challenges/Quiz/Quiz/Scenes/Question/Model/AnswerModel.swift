//
//  AnswerModel.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import Foundation

struct AnswerModel {
    enum Style {
        case blank
        case selected
        case correct
        case incorrect
    }
    
    let name: String
    let style: Style
}
