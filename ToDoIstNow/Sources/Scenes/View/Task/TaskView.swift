//
//  TaskView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct TaskView: View {

    @State private var multiSelection = Set<UUID>()

    var body: some View {
        NavigationView {
            List(selection: $multiSelection) {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "circle")

                    })
                    Text("Programming")
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {

                    Button(action: {}, label: {
                        Image(systemName: "chevron.left.circle")
                    })

                    Text("Inbox")
                        .bold()
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {

                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                    })

                    Button(action: {}, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                }
            }
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
