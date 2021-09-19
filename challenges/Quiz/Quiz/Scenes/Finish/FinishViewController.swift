//
//  FinishViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class FinishViewController: UIViewController {

    @IBOutlet var viewFinishQuiz: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        applyCornerRadius()

        // Do any additional setup after loading the view.
    }
    
    func applyCornerRadius() {
        viewFinishQuiz.layer.cornerRadius = 20
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
