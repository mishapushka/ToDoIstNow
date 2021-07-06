//
//  SectionFilters.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import Foundation

struct SectionFilters: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionFilters {
    static var items = [
        SectionFilters(name: "Assigned to me"),
        SectionFilters(name: "Priority")
    ]
}
