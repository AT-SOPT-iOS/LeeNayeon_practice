//
//  WelcomeViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 4/7/25.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var id: String?
    
    private let logoImage : UIImageView = {
        let image = UIImageView(frame: CGRect(x: 100, y: 50, width: 150, height: 150))
        image.image = UIImage(named: "welcomeVCimage")
        return image
    }()
    
    private let welcomeLabel : UILabel = {
        let label = UILabel(frame: CGRect(x : 69, y : 200, width: 236, height: 80))
//        label.text = "???님\n반가워요!"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    private lazy var MainButton : UIButton = {
        let button = UIButton(frame : CGRect(x: 21, y: 400, width: 322, height: 52))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
//        button.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var BackLoginButton : UIButton = {
        let button = UIButton(frame : CGRect(x: 21, y: 460, width: 322, height: 52))
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitle("다시 로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()
        bindID()
    }
    
    private func setLayout() {
        [logoImage, welcomeLabel, MainButton, BackLoginButton].forEach{self.view.addSubview($0)}
    }
    

    @objc
    private func backToLoginButtonDidTap(){
        if(self.navigationController == nil){
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }

    private func bindID() {
        self.welcomeLabel.text = "\(((id?.isEmpty) != nil) ? "알 수 없음" : id!)님\n반가워요!"
    }
    
    func setLabelText(id: String?){
        self.id = id
    }
    
}
