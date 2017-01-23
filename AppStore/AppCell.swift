//
//  AppCell.swift
//  AppStore
//
//  Created by Andy Stef on 1/23/17.
//  Copyright © 2017 Andy Stef. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {

    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "iron")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true

        return imageView
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Iron man: 2"
        label.font = UIFont.systemFont(ofSize: 14)
       // label.numberOfLines = 2

        return label
    }()

    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFont(ofSize: 13)

        return label
    }()

    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3.99"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        backgroundColor = .clear

        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)

        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 20)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 22, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 42, width: frame.width, height: 20)
    }
}
