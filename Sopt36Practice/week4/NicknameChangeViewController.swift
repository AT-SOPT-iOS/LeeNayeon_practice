//
//  NicknameChangeViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/9/25.
//

import UIKit

import SnapKit
import Then

final class NicknameChangeViewController: UIViewController {
    
    private var userId: Int? = UserService.shared.userId
    private var newName: String = ""
    
    private lazy var nicknameTextField = UITextField().then {
        $0.addTarget(self, action: #selector(textFieldDidEditing(_:)), for: .editingChanged)
        $0.backgroundColor = .lightGray
        $0.placeholder = "변경할 닉네임을 입력하세요"
        $0.layer.cornerRadius = 8
        $0.setLeftPadding(12)
        $0.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }

    private lazy var confirmButton = UIButton().then {
        $0.addTarget(self,
                     action: #selector(confirmButtonDidTap),
                     for: .touchUpInside)
        $0.backgroundColor = .blue
        $0.setTitle("확인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 8
        $0.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()
    }
    
    private func setLayout(){
        [nicknameTextField, confirmButton].forEach {
            self.view.addSubview($0)
        }
        
        nicknameTextField.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        confirmButton.snp.makeConstraints {
            $0.top.equalTo(nicknameTextField.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
    }
    
    @objc
    private func textFieldDidEditing(_ textField: UITextField) {
        self.newName = textField.text ?? ""
    }
    
    @objc
    private func confirmButtonDidTap(){
        guard let userId = self.userId else { return }
        
        Task{
            do{
                let response = try await PatchNicknameService.shared.patchChangedNickname(userId: userId, nickname: self.newName)
                
                let alert = UIAlertController(
                    title: "닉네임 변경 성공",
                    message : "\(response.message)",
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
            } catch {
                let alert = UIAlertController(
                    title: "닉네임 변경 실패",
                    message : error.localizedDescription,
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "확인", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
                
                print("닉네임 변경 에러 에러", error)
            }
        }
    }

}

private extension UITextField {
    func setLeftPadding(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

