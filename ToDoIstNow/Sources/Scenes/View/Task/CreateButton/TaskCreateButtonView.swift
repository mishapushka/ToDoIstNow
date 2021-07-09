//
//  TaskCreateButtonView.swift
//  ToDoIstNow
//
//  Created by mac on 09.07.2021.
//

import SwiftUI

struct TaskCreateButtonView: View {

    @State private var show = false

    var body: some View {
        VStack {
            Spacer()

            HStack {
                Spacer()
                
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(25)
                })
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Circle())
            }
            .padding([.leading, .trailing], 30)
        }
    }
}

struct TaskCreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCreateButtonView()
    }
}
