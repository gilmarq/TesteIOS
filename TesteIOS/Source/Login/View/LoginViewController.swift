//
//  LoginViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 13/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func checkIn(_ sender: Any) {
        let coordinator =  HomeCoordinator(navigationController: self.navigationController!)
                       coordinator.start()
    }
}
