//
//  LoginViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 06/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlet

    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!

    // MARK:-  life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - action

    @IBAction func didTapLogin(_ sender: Any) {
    }

}
