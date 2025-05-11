//
//  LoginViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/3/25.
//

import UIKit
import SnapKit

final class RegisterAPIViewController: UIViewController {

    private var loginId: String = ""
    private var password: String = ""
    private var nickName: String = ""
    
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 20
    }
    
    private lazy var idTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.backgroundColor = .lightGray
        $0.placeholder = "아이디를 입력하슈"
    }
    
    private lazy var passwordTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.backgroundColor = .lightGray
        $0.placeholder = "패스워드를 입력하슈"
    }
    
    private lazy var nickNameTextField = UITextField().then {
        $0.addTarget(self,
                     action: #selector(textFieldDidEditing(_:)),
                     for: .allEvents)
        $0.backgroundColor = .lightGray
        $0.placeholder = "닉네임을 입력하슈"
    }
    
    private lazy var registerButton = UIButton().then {
        $0.backgroundColor = .blue
        $0.setTitle("회원가입", for: .normal)
        $0.titleLabel?.textColor = .white
        $0.addTarget(self, action: #selector(registerButtonTap), for: .touchUpInside)
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
            nickName = textField.text ?? ""
        }
    }
    
    private func setLayout() {
        self.view.backgroundColor = .white
        self.view.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(40)
            $0.top.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(200)
        }
        
        [idTextField, passwordTextField, nickNameTextField, registerButton].forEach {
            self.stackView.addArrangedSubview($0)
        }
    }
    
        
    @objc private func registerButtonTap(){
        Task{
            do {
                let response = try await RegisterService.shared.PostRegisterData(loginId: self.loginId, password: self.password, nickName: self.nickName)
                
                let alert = UIAlertController(
                    title: "회원가입 성공",
                    message : "환영합니다, \(response.nickname)님! (ID: \(response.userId))",
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
                
            } catch {
                let alert = UIAlertController(
                    title: "회원가입 실패",
                    message : error.localizedDescription,
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
                
                print("회원가입 에러", error)
            }
        }
    }
}

