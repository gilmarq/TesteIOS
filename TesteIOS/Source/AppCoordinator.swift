//
//  AppCoordinator.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 06/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class AppCoordinator {

    private let navigationController: UINavigationController
    private var childCoordinator: LoginCoordinator!

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let coordinator = LoginCoordinator(
            navigationController: self.navigationController
        )

        self.childCoordinator = coordinator
        self.childCoordinator.start()
    }
}
