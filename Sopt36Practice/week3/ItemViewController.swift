//
//  CollectionViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 4/26/25.
//

import UIKit
import SnapKit

final class ItemViewController: UIViewController {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private let itemData = ItemModel.dummy()
    
    final let carrotLineSpacing : CGFloat = 10
    final let carrotInterItemSpacing : CGFloat = 21
    final let cellHeight : CGFloat = 198
    final let carrotInset = UIEdgeInsets(top: 48, left: 20, bottom: 10, right: 20)
}

extension ItemViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionViewLayout()
        setLayout()
        setDelegate()
        register()
    }
    
    private func setLayout(){
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    private func setCollectionViewLayout(){
        let flowLayout = UICollectionViewFlowLayout()
        
        let screenWidth = UIScreen.main.bounds.width
        let doubleCellWidth = screenWidth - carrotInset.left - carrotInset.right - carrotInterItemSpacing
        let cellWidth = doubleCellWidth / 2
        
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        flowLayout.minimumLineSpacing = carrotInterItemSpacing
        flowLayout.minimumInteritemSpacing = carrotInterItemSpacing
        self.collectionView.setCollectionViewLayout(flowLayout, animated: false)
    }
    
    private func setDelegate(){
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func register(){
        collectionView.register(
            ItemCollectionViewCell.self,
            forCellWithReuseIdentifier: ItemCollectionViewCell.identifier
        )
        
    }
}

extension ItemViewController: UICollectionViewDelegate{
    
}

extension ItemViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier,
                                                             for: indexPath) as? ItemCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(itemData[indexPath.row])
        return cell
        
    }
}
