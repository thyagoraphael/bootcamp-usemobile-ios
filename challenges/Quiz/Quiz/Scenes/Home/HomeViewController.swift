//
//  HomeViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let question1 = QuestionModel(
                title: "Qual time de futebol é conhecido como “The Red Devils”?",
                answer: [
                    AnswerModel(name: "Manchester United", style: .blank),
                    AnswerModel(name: "Manchester City", style: .blank),
                    AnswerModel(name: "Real Madrid", style: .blank),
                    AnswerModel(name: "Barcelona", style: .blank),
                ],
                answerCorrect: 0)
    let question2 = QuestionModel(
        title: "Qual o nome do primeiro filme da Pixar?",
        answer: [
            AnswerModel(name: "Turma da Mônica", style: .blank),
            AnswerModel(name: "Naruto", style: .blank),
            AnswerModel(name: "Drangon Ball Z", style: .blank),
            AnswerModel(name: "Toy Story", style: .blank),
        ],
        answerCorrect: 3)
    let question3 = QuestionModel(
        title: "Qual o ano de lançamento do iPhone?",
        answer: [
            AnswerModel(name: "2005", style: .blank),
            AnswerModel(name: "2006", style: .blank),
            AnswerModel(name: "2007", style: .blank),
            AnswerModel(name: "2008", style: .blank),
        ],
        answerCorrect: 2)
    let question4 = QuestionModel(
        title: "Qual dos impérios a seguir não possui um idioma escrito?",
        answer: [
            AnswerModel(name: "Azteca", style: .blank),
            AnswerModel(name: "Inca", style: .blank),
            AnswerModel(name: "Egípcio", style: .blank),
            AnswerModel(name: "Romano", style: .blank),
        ],
        answerCorrect: 1)
    let question5 = QuestionModel(
        title: "Qual nome do computador da Apple recebeu o mesmo nome da filha de Steve Jobs?",
        answer: [
            AnswerModel(name: "Soraia", style: .blank),
            AnswerModel(name: "Lisa", style: .blank),
            AnswerModel(name: "Brenda", style: .blank),
            AnswerModel(name: "Lauren", style: .blank),
        ],
        answerCorrect: 1)
    let question6 = QuestionModel(
        title: "Qual IDE oficial usada para criar aplicaçãos para iOS?",
        answer: [
            AnswerModel(name: "Visual Studio Code", style: .blank),
            AnswerModel(name: "AppCode", style: .blank),
            AnswerModel(name: "Android Studio", style: .blank),
            AnswerModel(name: "Xcode", style: .blank),
        ],
        answerCorrect: 3)
    let question7 = QuestionModel(
        title: "Qual ano o Brasil foi Penta Campeão?",
        answer: [
            AnswerModel(name: "1994", style: .blank),
            AnswerModel(name: "1998", style: .blank),
            AnswerModel(name: "2002", style: .blank),
            AnswerModel(name: "2006", style: .blank),
        ],
        answerCorrect: 2)
    let question8 = QuestionModel(
        title: "Qual jogador de futebol era conhecido pelo apelido, o anjo das pernas tortas?",
        answer: [
            AnswerModel(name: "Pelé", style: .blank),
            AnswerModel(name: "Ronaldo", style: .blank),
            AnswerModel(name: "Romário", style: .blank),
            AnswerModel(name: "Garrincha", style: .blank),
        ],
        answerCorrect: 3)
    let question9 = QuestionModel(
        title: "Qual linguagem de programação é a oficial para criação de apps para iOS?",
        answer: [
            AnswerModel(name: "Objective-C", style: .blank),
            AnswerModel(name: "Swift", style: .blank),
            AnswerModel(name: "Java", style: .blank),
            AnswerModel(name: "Kotlin", style: .blank),
        ],
        answerCorrect: 1)
    let question10 = QuestionModel(
        title: "Qual empresa está realizando o melhor bootcamp de iOS do mundo?",
        answer: [
            AnswerModel(name: "UseMobile", style: .blank),
            AnswerModel(name: "Apple", style: .blank),
            AnswerModel(name: "Microsoft", style: .blank),
            AnswerModel(name: "IBM", style: .blank),
        ],
        answerCorrect: 0)
    
    lazy var questions: [QuestionModel] = [
        question1,
        question2,
        question3,
        question4,
        question5,
        question6,
        question7,
        question8,
        question9,
        question10,
    ]

    @IBOutlet var viewStartQuiz: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyCornerRadius()
        title = "Perguntas e respostas"
        navigationItem.backButtonTitle = "Voltar"
    }
    
    @IBAction func buttonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController(questions: questions)
        navigationController?.pushViewController(viewController, animated: true)
    }

    func applyCornerRadius() {
        viewStartQuiz.layer.cornerRadius = 20
    }
    
    /* Change Color Status Bar*/
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barStyle = .black
    }
    // For other views
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.statusBarStyle
    }
    // Can change this programmatically, then call self.setNeedsStatusBarAppearanceUpdate()
    var statusBarStyle: UIStatusBarStyle = .default
}
