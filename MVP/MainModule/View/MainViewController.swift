//
//  ViewController.swift
//  MVP
//
//  Created by SilentObserver on 15/07/2020.
//  Copyright © 2020 Nathan Furman. All rights reserved.
//

import UIKit

// = View

class MainViewController: UIViewController {

    // MARK: - IBoutlets
    @IBOutlet weak var lblGreeting: UILabel!
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressOnButton(sender: UIButton) {
        self.presenter.showGreeting()
    }
}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.lblGreeting.text = greeting
    }
}

