//
//  HomeCollectionViewCell.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 15/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell, NibLoadableView ,ReusableView  {

    //MARK: - outlet

    @IBOutlet weak private var cardView: UIView!
    @IBOutlet weak private var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak private var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    //MARK: - variable
    private var home: HomeModel?

    //MARK: - fromNib

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCard()
    }

    //MARK: - private methods

    private func setupCard() {
        cardView.layer.masksToBounds = true
        cardView.layer.borderWidth = 1
        cardView.layer.cornerRadius = 10
    }

    //MARK: - public methods

    func setup(with home: HomeModel) {
        guard let priceValue = home.price else { return }
        guard let dataValue = home.date else { return }

        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        print(formatter.string(from: dataValue))
        print(dataValue)

        titleLabel.text = home.title
        dateLabel.text = "até \(String(formatter.string(from: dataValue)))"
        priceLabel.text = "valor \(String(priceValue)) R$"
    }
}
