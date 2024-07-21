//
//  ViewController.swift
//  CellConfiguration
//
//  Created by Masahito Mori on 2024/07/18.
//

import UIKit

final class ViewController: UIViewController {
    private let mainView = MainView()
    private let adapter = TableViewAdapter()
    static let cellIdentifier = "sampleCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CellConfiguration"
        
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        mainView.tableView.dataSource = adapter
        mainView.tableView.delegate = adapter
        mainView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
    }
}

#Preview {
    ViewController()
}


