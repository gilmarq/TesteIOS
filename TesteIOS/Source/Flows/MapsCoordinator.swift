//
//  MapsCoordinator.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 24/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class MapsCoordinator {

    var logitude: Double?
    var lagitude: Double?
    var name: String?

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
        self.viewController = MapsViewController(logitudo: self.logitude,  latitude: self.lagitude, name: self.name!)
        self.navigationController.pushViewController(self.viewController, animated: false)
    }
}
