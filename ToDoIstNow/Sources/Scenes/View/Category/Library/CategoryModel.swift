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

struct SectionFavorites: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

extension SectionFavorites {
    static var items = [
        SectionFavorites(name: "Идеи", imageName: "circlebadge.fill"),
        SectionFavorites(name: "Обучение/Развитие", imageName: "circlebadge.fill")
    ]
}

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

struct SectionLabels: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionLabels {
    static var items = [
        SectionLabels(name: "")
    ]
}

struct SectionFilters: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionFilters {
    static var items = [
        SectionFilters(name: "")
    ]
}
