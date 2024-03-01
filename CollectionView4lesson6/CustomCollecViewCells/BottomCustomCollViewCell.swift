//
//  BottomCustomCollViewCell.swift
//  CollectionView4lesson6
//
//  Created by Aiturgan Kurmanbekova on 29/2/24.
//

import UIKit

class BottomCustomCollViewCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    
    private let nameLabel = UILabel()
    
    private let userImage = UIImageView()
    
    private let userLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setValues()
    }
    
    private func setupUI() {
        contentView.addSubview(imageView)
        NSLayoutConstraint.activate(
            [imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
             imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
             imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
             imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
             imageView.heightAnchor.constraint(equalToConstant: 220),
             imageView.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        imageView.addSubview(nameLabel)
        imageView.addSubview(userImage)
        imageView.addSubview(userLabel)
        NSLayoutConstraint.activate(
            [/*nameLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 120),*/
             nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 8),
             nameLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15),
             nameLabel.heightAnchor.constraint(equalToConstant: 50),
             
             userImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
             userImage.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 8),
             userImage.heightAnchor.constraint(equalToConstant: 20),
             userImage.widthAnchor.constraint(equalToConstant: 20),
             userImage.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -5),
             
             userLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
             userLabel.leadingAnchor.constraint(equalTo: userImage.trailingAnchor, constant: 5),
             userLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15),
             userLabel.heightAnchor.constraint(equalToConstant: 20),
             userLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -5)
            ])
        
    }
    
    
    private func setValues() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        userImage.translatesAutoresizingMaskIntoConstraints = false
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.textColor = .white
        userLabel.textColor = .white
        
        nameLabel.numberOfLines = 2
    }
    
    
    func setData(bottomCell: BottomCell) {
        imageView.image = bottomCell.image
        nameLabel.text = bottomCell.name
        userImage.image = bottomCell.userImage
        userLabel.text = bottomCell.userName
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
