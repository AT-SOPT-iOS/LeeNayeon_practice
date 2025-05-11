//
//  LoginAPIViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/8/25.
//

import UIKit

import SnapKit
import Then

final class LoginAPIViewController : UIViewController {
    
    private var loginId: String = ""
    private var password: String = ""
    
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .equalSpacing
        $0.spacing = 10
    }
    
    private lazy var idTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.backgroundColor = .lightGray
        $0.placeholder = "아이디"
    }
    
    private lazy var passwordTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.backgroundColor = .lightGray
        $0.placeholder = "패스워드"
    }
    
    private lazy var loginButton = UIButton().then {
        $0.backgroundColor = .blue
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.textColor = .white
        $0.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    @objc private func textFieldDidEditing(_ textField: UITextField) {
        switch textField {
        case idTextField:
            loginId = textField.text ?? ""
        case passwordTextField:
            password = textField.text ?? ""
        default:
            break
        }
    }
    
    private func setLayout() {
        self.view.backgroundColor = .white
        self.view.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(40)
            $0.top.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(200)
        }
        
        [idTextField, passwordTextField, loginButton].forEach {
            self.stackView.addArrangedSubview($0)
        }
    }
    
    @objc
    private func loginButtonDidTap(){
        Task{
            do {
                let response = try await LoginService.shared.postLoginData(loginId: self.loginId, password: self.password)
                
                let alert = UIAlertController(
                    title: "로그인 성공",
                    message : "환영합니다! (ID: \(response.userId))",
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default){ _ in
                    let nextVC = WelcomeAPIViewController()
                    self.navigationController?.pushViewController(nextVC, animated: true)
                }
                alert.addAction(okAction)
                self.present(alert, animated: true)
            } catch {
                let alert = UIAlertController(
                    title: "로그인 실패",
                    message: error.localizedDescription,
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
                
                print("로그인 에러", error)
            }
        }
    }
    
}
