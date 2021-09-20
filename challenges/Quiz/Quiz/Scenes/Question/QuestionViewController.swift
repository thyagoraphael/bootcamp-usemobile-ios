//
//  QuestionViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let question = QuestionModel(
        title: "Qual seu primeiro nome?",
        answer: [
            AnswerModel(name: "Thyago", style: .blank),
            AnswerModel(name: "Raphael", style: .blank),
            AnswerModel(name: "Almeida", style: .blank),
            AnswerModel(name: "dos Santos", style: .blank),
        ],
        answerCorrect: 0
    )

    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        title = "Perguntas e Respostas"
    }
    
    @IBAction func handlerButtonAnswer(_ sender: Any) {
        
    }
    
    func setupUI() {
        
        labelQuestion.text = question.title
        
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.answer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = question.answer[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(model: answer)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
