//
//  DetailViewModel.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 11/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class DetailViewModel {

    private var coordinator: DetailCoordinator?

    var id: String?
    var detailModel: DetailModel? {
        didSet {
            guard let detail = detailModel else { return }
            self.setupText(with: detail)
            self.didLoadData?()
        }
    }
    
    var titleString: String?
    var descriptionString: String?
    var dateDate: Date?
    var imageURL: String?
    var longitudeDouble: Double?
    var latitudeDouble: Double?
    var priceDouble: Double?
    var idString: String?
    var longitude: Double?
    var lagitude: Double?
    
    var didLoadData: (() -> ())?
    
    func loadService(id: String?) {
        guard let id = id else { return }
        Service.detail(id: id) { (response) in
            guard let data = response else { return}
            self.detailModel = data
        }
    }
    
    private func setupText(with detailModel: DetailModel) {
        self.titleString = self.detailModel?.title
        self.titleString = self.detailModel?.title
        self.descriptionString = self.detailModel?.description
        self.priceDouble = self.detailModel?.price
        self.dateDate =  self.detailModel?.date
        self.imageURL = self.detailModel?.image
        self.longitude = self.detailModel?.longitude
        self.lagitude = self.detailModel?.latitude
    }
}
