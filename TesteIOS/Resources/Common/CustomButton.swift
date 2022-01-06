//
//  CustomButton.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 06/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    var borderWidth: CGFloat = 1
    var borderColor = UIColor.black.cgColor

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
        applyGradient(colors: [UIColor.magenta.cgColor, UIColor.purple.cgColor])
    }

    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
    }

    func applyGradient(colors: [CGColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

