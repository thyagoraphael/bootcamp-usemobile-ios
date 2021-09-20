//
//  FinishViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class FinishViewController: UIViewController {
    
    let countCorrects: Int
    let total: Int

    @IBOutlet var viewFinishQuiz: UIView!
    @IBOutlet var labelCoubtAnswer: UILabel!
    
    init(countCorrects: Int, total: Int) {
        self.countCorrects = countCorrects
        self.total = total
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyCornerRadius()
        
        title = "Perguntas e respostas"
        navigationItem.backButtonTitle = ""
        labelCoubtAnswer.text = "\(countCorrects)/\(total) Acertos"
    }
    
    func applyCornerRadius() {
        viewFinishQuiz.layer.cornerRadius = 20
    }
    
    @IBAction func handlerButtonRetry(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
