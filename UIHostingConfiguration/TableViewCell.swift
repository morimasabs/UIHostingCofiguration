//
//  TableViewCell.swift
//  UIHostingConfiguration
//
//  Created by Masahito Mori on 2024/07/21.
//

import SwiftUI

struct TableViewCell: View {
    static let identifier = "sampleCell"
    
    var body: some View {
        HStack {
            Text("SampleCell")
        }
    }
}

#Preview {
    TableViewCell()
}
