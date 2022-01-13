//
//  HomeCoordinator.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 13/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeCoordinator {

    // MARK: - Instance dependencies
    private let navigationController: UINavigationController

    // MARK: - Instance state
    private var viewController: HomeViewController!

    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Coordinator functions
    func start() {
        self.viewController = HomeViewController()
        self.navigationController.pushViewController(self.viewController, animated: false)
    }
}
