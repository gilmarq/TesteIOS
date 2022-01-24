//
//  MapsCoordinator.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 24/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class MapsCoordinator {

    var id: String?
    // MARK: - Instance dependencies
    private let navigationController: UINavigationController

    // MARK: - Instance state
    private var viewController: MapsViewController!

    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Coordinator functions
    func start() {
        guard let id = id else { return }
        self.viewController = MapsViewController()

        self.navigationController.pushViewController(self.viewController, animated: false)
    }
}
