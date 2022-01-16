//
//  HomeViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 12/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var collection: UICollectionView!

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
        collection.register(HomeCollectionViewCell.self)
        loadDataHome()
        navigationController?.isNavigationBarHidden = false
    }

    func loadDataHome() {
        Service.homeEvent { (info) in
            if let info = info {
                //  self.homeModel = info. date


            }
        }
    }
}

//MARK: - UICollectionViewDelegate
extension HomeViewController: UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        // return homeViewModel.universe.count
        return 2
    }

    func numberOfSelections(in collectionView: UICollectionView)-> Int{
        // return homeViewModel.universe.count
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let cell: HomeCollectionViewCell = collection.dequeueReusableCell(forIndexPath: indexPath)

    }
}

//MARK:- UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HomeCollectionViewCell = collection.dequeueReusableCell(forIndexPath: indexPath)

        return cell
    }
}

//MARK:- UICollectionViewDelegateFlowLayout
extension HomeViewController: UICollectionViewDelegateFlowLayout {

    func  collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                          sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (self.collection.bounds.width)
        let heigth = self.collection.bounds.height / 4

        return CGSize(width: width, height: heigth)
    }

}



