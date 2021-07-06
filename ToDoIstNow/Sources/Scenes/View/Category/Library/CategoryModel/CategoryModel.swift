//
//  CategoryModel.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import Foundation

struct CategoryModel: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}

extension CategoryModel {
    static var items = [
        CategoryModel(name: "Inbox", icon: "externaldrive"),
        CategoryModel(name: "Today", icon: "25.square"),
        CategoryModel(name: "Upcomming", icon: "calendar.badge.clock")
    ]
}
