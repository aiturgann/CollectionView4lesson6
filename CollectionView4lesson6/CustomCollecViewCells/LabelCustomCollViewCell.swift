//
//  LabelCustomCollViewCell.swift
//  CollectionView4lesson6
//
//  Created by Aiturgan Kurmanbekova on 29/2/24.
//

import UIKit

class LabelCustomCollViewCell: UICollectionViewCell {
    
    private let rightLabel = UILabel()
    
    private let leftLabel = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setValues()
    }
    
    private func setupUI() {
        contentView.addSubview(rightLabel)
        NSLayoutConstraint.activate(
            [rightLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
             rightLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
             rightLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
             rightLabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        contentView.addSubview(leftLabel)
        NSLayoutConstraint.activate(
            [leftLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
             leftLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
             leftLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
             leftLabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        
    }
    
    private func setValues() {
        rightLabel.text = "Sort by"
        rightLabel.font = .systemFont(ofSize: 24, weight: .bold)
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        leftLabel.setTitle("Most popular", for: .normal)
        leftLabel.setTitleColor(.red, for: .normal)
        leftLabel.setImage(UIImage(systemName: "arrow.up.arrow.down"), for: .normal)
        leftLabel.tintColor = .red
        leftLabel.configuration?.imagePlacement = .trailing
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
