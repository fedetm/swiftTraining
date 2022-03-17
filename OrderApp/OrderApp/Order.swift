//
//  Order.swift
//  OrderApp
//
//  Created by Backup Admin on 3/15/22.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]

    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
