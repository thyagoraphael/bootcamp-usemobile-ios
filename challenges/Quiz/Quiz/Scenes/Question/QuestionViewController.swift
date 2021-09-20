//
//  QuestionViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var questions: [QuestionModel]
    var indexQuestion: Int = 0
    var countCorrectsAnswer = 0
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buttonAnswer: UIButton!
    
    init(questions: [QuestionModel]) {
        self.questions = questions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        title = "Perguntas e respostas"
    }
    
    @IBAction func handlerButtonAnswer(_ sender: Any) {
        
        if questions[indexQuestion].isAnswer {
            
            indexQuestion += 1
            if indexQuestion < questions.count {
                updateLayout()
            } else {
                let viewController = FinishViewController(countCorrects: countCorrectsAnswer, total: questions.count)
                navigationController?.pushViewController(viewController, animated: true)
            }
            buttonAnswer.setTitle("Responder", for: .normal)
        } else {
            for indexAnswer in 0..<questions[indexQuestion].answer.count {
                if indexAnswer == questions[indexQuestion].answerCorrect {
                    if questions[indexQuestion].answer[indexAnswer].style == .selected {
                        countCorrectsAnswer += 1
                    }
                    questions[indexQuestion].answer[indexAnswer].style = .correct
                    
                } else if questions[indexQuestion].answer[indexAnswer].style == .selected {
                    questions[indexQuestion].answer[indexAnswer].style = .incorrect
                }
            }
            
            tableView.reloadData()
            questions[indexQuestion].isAnswer = true
            buttonAnswer.setTitle("Próxima pergunta", for: .normal)
        }
    }
    
    func updateLayout() {
        labelQuestion.text = questions[indexQuestion].title
        tableView.reloadData()
    }
    
    func setupUI() {
        
        labelQuestion.text = questions[indexQuestion].title
        
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions[indexQuestion].answer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = questions[indexQuestion].answer[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(model: answer)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if questions[indexQuestion].isAnswer {
            return
        }
        
        for indexAnswer in 0..<questions[indexQuestion].answer.count {
            questions[indexQuestion].answer[indexAnswer].style = indexAnswer == indexPath.row ? .selected : .blank
        }
        tableView.reloadData()
    }
}
