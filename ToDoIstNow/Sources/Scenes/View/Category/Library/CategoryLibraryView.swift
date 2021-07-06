//
//  CategoryLibraryView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryLibraryView: View {
    
    var categories = CategoryModel.items
    var firstSections = SectionFavorites.items
    var secondSections = SectionProjects.items
    var thirdSections = SectionFilters.items

    @State private var multiSelection = Set<UUID>()
    @State private var newToDoItem = ""

    var body: some View {
        List(selection: $multiSelection) {
            ForEach(categories) {category in
                HStack {
                    Image(systemName: category.icon)
                        .foregroundColor(.blue)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text(category.name)
                    })
                }
                .font(.system(size: 20))
            }
            Section(header: Text("Favorites").textCase(.none)) {
                HStack {
                    TextField("New item", text: self.$newToDoItem)
                    Button(action: {}, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.green)
                            .imageScale(.large)
                    })
                }
                ForEach(firstSections) {items in
                    Text(items.name)
                }
            }
            Section(header: Text("Projects").textCase(.none)) {
                HStack {
                    TextField("New item", text: self.$newToDoItem)
                    Button(action: {}, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.green)
                            .imageScale(.large)
                    })
                }
                ForEach(secondSections) {items in
                    Text(items.name)
                }
            }
            Section(header: Text("Filters").textCase(.none)) {
                HStack {
                    TextField("New item", text: self.$newToDoItem)
                    Button(action: {}, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.green)
                            .imageScale(.large)
                    })
                }
                ForEach(thirdSections) {items in
                    Text(items.name)
                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct CategoryLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryLibraryView()
    }
}
