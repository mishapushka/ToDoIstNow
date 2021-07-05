//
//  SectionProjects.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import Foundation

struct SectionProjects: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionProjects {
    static var items = [
        SectionProjects(name: "Личные"),
        SectionProjects(name: "Покупки"),
        SectionProjects(name: "Работа"),
        SectionProjects(name: "Фильмы для просмотра"),
        SectionProjects(name: "Деньги"),
        SectionProjects(name: "Жилье"),
        SectionProjects(name: "Идеи"),
        SectionProjects(name: "Обучение/Развитие")
    ]
}
