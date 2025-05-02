//
//  ItemCollectionViewCell.swift
//  Sopt36Practice
//
//  Created by 이나연 on 4/26/25.
//

import UIKit
import SnapKit
import Then

final class ItemCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "ItemCollectionViewCell"
    
    private let itemImageView = UIImageView()
    
    private let nameLabel = UILabel().then{
        $0.textColor = .black
        $0.textAlignment = .center
        $0.font = UIFont(name: "Pretendard-Regular", size: 16)
    }
    
    private let priceLabel = UILabel().then{
        $0.textColor = .orange
        $0.textAlignment = .left
        $0.font = .boldSystemFont(ofSize: 15)
    }
    
    private let heartButton = UIButton().then{
        $0.setImage(.heartBlack, for: .normal)
        $0.setImage(.heartRed, for: .selected)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        self.backgroundColor = .white
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        [itemImageView, nameLabel, priceLabel, heartButton].forEach {
            contentView.addSubview($0)
        }
        
        itemImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(9)
            $0.bottom.equalToSuperview().inset(59)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(itemImageView.snp.bottom).offset(2)
            $0.leading.equalToSuperview().offset(9)
        }
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(2)
            $0.leading.equalToSuperview().offset(9)
        }
        
        heartButton.snp.makeConstraints {
            $0.trailing.bottom.equalTo(itemImageView).inset(8)
            $0.size.equalTo(16)
        }
    }
}

extension ItemCollectionViewCell {
    func dataBind(_ itemData: ItemModel){
        itemImageView.image = itemData.itemImg
        nameLabel.text = itemData.name
        priceLabel.text = itemData.price
    }
}
