//
//  ViewController.swift
//  AppStore
//
//  Created by Andy Stef on 1/23/17.
//  Copyright © 2017 Andy Stef. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController {

    struct CollectionViewCellIdentifiers {
        static let categoryCell = "CategoryCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: CollectionViewCellIdentifiers.categoryCell)
        navigationItem.title = "Featured"
    }
}

//MARK: - Data Source
extension FeaturedAppsController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellIdentifiers.categoryCell, for: indexPath)

        return cell
    }
}

//MARK: - Flow layout delegate
extension FeaturedAppsController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }
}
