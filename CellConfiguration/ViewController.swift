//
//  ViewController.swift
//  CellConfiguration
//
//  Created by Masahito Mori on 2024/07/18.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {
    private let tableView = UITableView()
    private let cellIdentifier = "sampleCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CellConfiguration"
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        let cell = reusableCell ?? UITableViewCell()
        cell.contentConfiguration = UIHostingConfiguration {
            HStack {
                Text("SampleCell")
            }
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {}

#Preview {
    ViewController()
}


