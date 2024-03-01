//
//  ViewController.swift
//  CollectionView4lesson6
//
//  Created by Aiturgan Kurmanbekova on 27/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let collectionView1: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 40, height: 140)
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    private let middleCollView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 40, height: 60)
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    private let collectionView2: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width) / 2 - 30, height: 240)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let topCell: [TopCell] = [TopCell(image: .top1,
                                      name: "Salad",
                                      value: "16,78 recipes"),
                              TopCell(image: .top2,
                                      name: "Salad",
                                      value: "11,111 recipes")]
    
    let bottomCell: [BottomCell] = [BottomCell(image: .salad1,
                                               name: "Caprese Salad with Balsamic Reduction",
                                               userImage: .user1,
                                               userName: "Jane Cooper"),
                                    BottomCell(image: .salad2,
                                               name: "Apple Feta Spinach Salad",
                                               userImage: .user2,
                                               userName: "Clinton Mcclure"),
                                    BottomCell(image: .salad3,
                                               name: "Smoked Salmon Salad in Creamy Caper Chive Dressing",
                                               userImage: .user3,
                                               userName: "Brad Wigington"),
                                    BottomCell(image: .salad4,
                                               name: "Mediterranean Salad",
                                               userImage: .user4,
                                               userName: "Tyra Ballentina"),
                                    BottomCell(image: .salad5,
                                               name: "Salad",
                                               userImage: .user5,
                                               userName: "Marci Winkles"),
                                    BottomCell(image: .salad6,
                                               name: "Greek Salad",
                                               userImage: .user6,
                                               userName: "Aileen Mioko")
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView1.dataSource = self
        collectionView1.register(TopCustomCollViewCell.self, forCellWithReuseIdentifier: "cell")

        
        view.addSubview(collectionView1)
        NSLayoutConstraint.activate(
            [collectionView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
             collectionView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             collectionView1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             collectionView1.heightAnchor.constraint(equalToConstant: 160)
            ])
        
        
        view.addSubview(middleCollView)
        NSLayoutConstraint.activate(
            [middleCollView.topAnchor.constraint(equalTo: collectionView1.bottomAnchor, constant: 10),
             middleCollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             middleCollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             middleCollView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        middleCollView.dataSource = self
        middleCollView.register(LabelCustomCollViewCell.self, forCellWithReuseIdentifier: "cell3")
        
        
        view.addSubview(collectionView2)
        NSLayoutConstraint.activate(
            [collectionView2.topAnchor.constraint(equalTo: middleCollView.bottomAnchor, constant: 10),
             collectionView2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             collectionView2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             collectionView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            ])
        
        collectionView2.dataSource = self
        collectionView2.register(BottomCustomCollViewCell.self, forCellWithReuseIdentifier: "cell2")
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView1 {
            return topCell.count
        } else if collectionView == collectionView2 {
            return bottomCell.count
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TopCustomCollViewCell
            cell.setData(topCell: topCell[indexPath.row])
            cell.layer.cornerRadius = 12
            return cell
        } else if collectionView == collectionView2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! BottomCustomCollViewCell
            cell.setData(bottomCell: bottomCell[indexPath.row])
            cell.layer.cornerRadius = 12
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! LabelCustomCollViewCell
            cell.layer.cornerRadius = 14
            return cell
        }
    }
    
    
}

