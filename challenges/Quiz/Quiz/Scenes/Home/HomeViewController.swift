//
//  HomeViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var viewStartQuiz: UIView!
    
    @IBAction func buttonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyCornerRadius()
        title = "Perguntas e Respostas"
        navigationItem.backButtonTitle = "Voltar"
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
