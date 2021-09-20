//
//  QuestionModel.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import Foundation

struct QuestionModel {
    let title: String
    var answer: [AnswerModel]
    let answerCorrect: Int
    var isAnswer: Bool = false
}
