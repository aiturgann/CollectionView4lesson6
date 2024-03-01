//
//  SimpleCollectionViewCell.swift
//  CollectionView4lesson6
//
//  Created by Aiturgan Kurmanbekova on 27/2/24.
//

import UIKit

class TopCustomCollViewCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    
    private let nameLabel = UILabel()
    
    private let secondLabel = UILabel()
    
    
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
             imageView.heightAnchor.constraint(equalToConstant: 100 ),
             imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
        
        imageView.addSubview(nameLabel)
        imageView.addSubview(secondLabel)
        NSLayoutConstraint.activate(
            [nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
             nameLabel.heightAnchor.constraint(equalToConstant: 30),
             secondLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
             secondLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
             secondLabel.heightAnchor.constraint(equalToConstant: 16),
             secondLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -10)
            ])
    }
    
    
    private func setValues() {
        nameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        secondLabel.font = .systemFont(ofSize: 12)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.layer.cornerRadius = 12
        nameLabel.textColor = .white
        secondLabel.textColor = .white
    }
    
    
    func setData(topCell: TopCell) {
        imageView.image = topCell.image
        nameLabel.text = topCell.name
        secondLabel.text = topCell.value
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
