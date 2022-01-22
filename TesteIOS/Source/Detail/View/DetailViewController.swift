//
//  DetailViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 11/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit
import Kingfisher


class DetailViewController: UIViewController {

    //MARK: - OUtlet

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!

    private let viewModel = DetailViewModel()
    private var detailModel: DetailModel?
    var id: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        LoadViewModelLoadService()
        setupView()
    }

    func LoadViewModelLoadService() {
        guard let id = self.id else { return }
        viewModel.loadService(id: id)
    }

    private func setupView() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        viewModel.didLoadData = {
            guard let priceValue = self.viewModel.priceDouble else { return }
            guard let dataValue = self.viewModel.dateDate else { return }

            self.titleLabel.text = self.viewModel.titleString
            self.descriptionLabel.text = self.viewModel.descriptionString

            self.dateLabel.text = "até \(String(formatter.string(from: dataValue)))"
            self.priceLabel.text = "valor \(String(priceValue)) R$"

            if let url = URL(string: self.viewModel.imageURL!) {
                self.productImage.kf.indicatorType = .activity
                self.productImage.kf.setImage(with: url)
            }else {
                self.productImage.image = nil
            }
        }
    }

    @IBAction func openMaps(_ sender: Any) {

    }
}
