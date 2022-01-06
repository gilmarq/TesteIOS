//
//  LoginCoordinator.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 06/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class LoginCoordinator {
    var value = ""

    // MARK: - Instance dependencies
    private let navigationController: UINavigationController

    // MARK: - Instance state
    private var viewController: LoginViewController!

    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Coordinator functions
    func start() {
        self.viewController = LoginViewController()

        self.navigationController.pushViewController(self.viewController, animated: false)
    }
}

