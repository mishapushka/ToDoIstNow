//
//  CategoryView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryView: View {

    var categories = CategoryModel.items
    var firstSections = SectionFavorites.items
    var secondSections = SectionProjects.items

    @State private var multiSelection = Set<UUID>()
    @State private var newToDoFavorites = ""
    @State private var newToDoProjects = ""
    @State private var numbers = [Int]()


    var body: some View {
        NavigationView {
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
                        TextField("New item", text: self.$newToDoFavorites)
                        Button(action: {}, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        })
                    }
                    ForEach(firstSections) {items in
                        Text(items.name)
                    }
                    .onDelete(perform: removeRows)
                }
                Section(header: Text("Projects").textCase(.none)) {
                    HStack {
                        TextField("New item", text: self.$newToDoProjects)
                        Button(action: {}, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        })
                    }
                    ForEach(secondSections) {items in
                        Text(items.name)
                    }
                    .onDelete(perform: removeRows)
                }
            }
            .listStyle(InsetListStyle())

            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {

                    Button(action: {}, label: {
                        Image(systemName: "sun.max")
                    })
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {

                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                    })

                    Button(action: {}, label: {
                        Image(systemName: "bell")
                    })

                    EditButton()
                    //                    "gearshape"
                }
            }
            .background(Color("TopBar"))
        }
        .accentColor(.black)
    }
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
