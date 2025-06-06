//
//  ChatViewController.swift
//  Sopt36Practice
//
//  Created by 이나연 on 4/26/25.
//

import UIKit
import SnapKit
import Then

final class ChatViewController : UIViewController{
    
    private let tableView = UITableView(frame: .zero, style: .plain)
    
    private let chatList = ChatModel.dummy()
    
    
}

extension ChatViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        setDelegate()
        register()
    }
    
    private func setLayout(){
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    private func setDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func register(){
        tableView.register(ChatTableViewCell.self, forCellReuseIdentifier: ChatTableViewCell.identifier)
    }
    
}

extension ChatViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
extension ChatViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: ChatTableViewCell.identifier,
            for: indexPath) as? ChatTableViewCell else { return UITableViewCell() }
        cell.dataBind(chatList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return 10
    }
}

