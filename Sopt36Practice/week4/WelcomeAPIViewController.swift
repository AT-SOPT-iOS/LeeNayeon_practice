//
//  WelcomAPIViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/8/25.
//

import UIKit

import SnapKit
import Then

final class WelcomeAPIViewController: UIViewController {
    
    private lazy var infoViewButton = UIButton().then {
        $0.addTarget(self,
                     action: #selector(infoViewButtonTap),
                     for: .touchUpInside)
        $0.backgroundColor = .blue
        $0.setTitle("회원정보 조회", for: .normal)
        $0.titleLabel?.textColor = .white
    }
    
    private lazy var changeNickNameButton = UIButton().then {
        $0.addTarget(self,
                     action: #selector(changeNickNameButtonDidTap),
                     for: .touchUpInside)
        $0.backgroundColor = .blue
        $0.setTitle("닉네임 수정", for: .normal)
        $0.setTitleColor(.white, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout(){
        self.view.backgroundColor = .white
        [infoViewButton, changeNickNameButton].forEach{
            self.view.addSubview($0)
        }
        
        infoViewButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        changeNickNameButton.snp.makeConstraints{
            $0.top.equalTo(infoViewButton.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    @objc
    private func infoViewButtonTap() {
        let infoVC = InfoViewController()
        self.present(infoVC, animated: true)
    }
    
    @objc
    private func changeNickNameButtonDidTap() {
        let nicknameVC = NicknameChangeViewController()
        self.present(nicknameVC, animated: true)
    }
}
