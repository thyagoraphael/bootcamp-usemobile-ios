//
//  HomeViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var viewStartQuiz: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        applyCornerRadius()
        // Do any additional setup after loading the view.
    }


    func applyCornerRadius() {
        viewStartQuiz.layer.cornerRadius = 20
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
