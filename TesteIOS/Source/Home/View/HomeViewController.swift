//
//  HomeViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 12/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   @IBOutlet weak private var TableView: UITableView!

   private var homeModel: [HomeModel] = []

    //MARK:- init

    init() {
        super.init(nibName: "HomeViewController", bundle : nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.register(HomeTableViewCell.self)
        loadDataHome()
        navigationController?.isNavigationBarHidden = false
    }

    func loadDataHome() {
        Service.homeEvent { (info) in
            if let info = info {
                self.homeModel += info.data
                self.TableView.reloadData()
            }
        }
    }
}

//MARK: - UICollectionViewDelegate
extension HomeViewController : UITableViewDelegate {

    func tableView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeModel.count
    }
}

//MARK:- UICollectionViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeModel.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let home = homeModel[indexPath.row]
        let cell: HomeTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        cell.setup(with: home)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        let home = homeModel[indexPath.row]
          cell.setup(with: home)
        return cell
    }
}

