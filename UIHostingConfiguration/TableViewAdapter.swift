//
//  TableViewAdapter.swift
//  UIHostingConfiguration
//
//  Created by Masahito Mori on 2024/07/21.
//

import UIKit
import SwiftUI

final class TableViewAdapter: NSObject {}

extension TableViewAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.description())
        let cell = reusableCell ?? UITableViewCell()
        cell.contentConfiguration = UIHostingConfiguration {
            TableViewCell()
        }
        return cell
    }
}

extension TableViewAdapter: UITableViewDelegate {}
