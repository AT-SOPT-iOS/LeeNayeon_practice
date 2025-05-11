//
//  MainAPIViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/8/25.
//

import UIKit

import SnapKit
import Then

final class MainAPIViewController : UIViewController {
    
    private lazy var loginButton = UIButton().then{
        $0.backgroundColor = .blue
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }
    
    private lazy var registerButton = UIButton().then {
        $0.backgroundColor = .blue
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.addTarget(self, action: #selector(registerButtonDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout(){
        [loginButton, registerButton].forEach{
            self.view.addSubview($0)
        }
        
        self.view.backgroundColor = .white
        
        loginButton.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        registerButton.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    @objc
    private func loginButtonDidTap() {
        let loginVC = LoginAPIViewController()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc
    private func registerButtonDidTap() {
        let registerVC = RegisterAPIViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
}
