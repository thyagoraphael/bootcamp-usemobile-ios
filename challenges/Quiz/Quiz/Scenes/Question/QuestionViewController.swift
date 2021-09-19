//
//  QuestionViewController.swift
//  Quiz
//
//  Created by thyagoraphael on 9/19/21.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Perguntas e Respostas"
    }
}
