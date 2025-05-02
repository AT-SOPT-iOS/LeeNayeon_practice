//
//  AutoLayoutViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 4/12/25.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
        
    }
    
    private func setLayout(){
        [yellowView, greenView, blackView, blueView].forEach { [weak self] view in
            guard let self else { return }
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        let width = UIScreen.main.bounds.width/2
        let height = UIScreen.main.bounds.height/4
        
        NSLayoutConstraint.activate([yellowView.topAnchor.constraint(equalTo: self.view.topAnchor, constant : 0),
                                     yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     yellowView.widthAnchor.constraint(equalToConstant: width),
                                     yellowView.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([greenView.topAnchor.constraint(equalTo: self.yellowView.bottomAnchor, constant : 0),
                                     greenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
                                     greenView.widthAnchor.constraint(equalToConstant: width),
                                     greenView.heightAnchor.constraint(equalToConstant: height)
                                    ])
        
        NSLayoutConstraint.activate([blackView.topAnchor.constraint(equalTo: self.greenView.bottomAnchor, constant : 0),
                                    blackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     blackView.widthAnchor.constraint(equalToConstant: width),
                                     blackView.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([blueView.topAnchor.constraint(equalTo: self.blackView.bottomAnchor, constant : 0),
                                     blueView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
                                     blueView.widthAnchor.constraint(equalToConstant: width),
                                     blueView.heightAnchor.constraint(equalToConstant: height)])
        
    }
    
    
}

