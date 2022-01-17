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
        // Initialization code
        setupCard()
    }

    //MARK: - private methods

    private func setupCard(){
        cardView.layer.masksToBounds = true
        cardView.layer.borderWidth = 1
        cardView.layer.cornerRadius = 10
    }

    //MARK: - public methods

    func setup(with home: HomeModel) {

      // let price = numberFormatter.string(from: home.price)
      titleLabel.text = home.title
        descriptionLabel.text = home.description
        priceLabel.text = String(home.price)
//dateLabel.text = String(Int: home.date)
    }
}
