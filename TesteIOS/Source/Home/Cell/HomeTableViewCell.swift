//
//  HomeTableViewCell.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 12/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell, NibLoadableView, ReusableView  {

 //MARK: - Outlet

    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(with home: HomeModel) {
        print(home.title)
        self.titleLabel.text = home.title
        self.dataLabel.text = String(decoding: home.date, as: UTF8.self)
        self.priceLabel.text = String(home.price)
        self.descriptionLabel.text = home.description
    }

    
}
