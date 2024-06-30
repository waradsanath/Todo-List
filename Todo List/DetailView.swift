//
//  DetailView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var name: String
    @Binding var date: Date
    @Binding var subject: String
    @Binding var completed: Bool
    var body: some View {
        NavigationStack {
            List {
                InputView(text: name, title: "Name")
                DatePicker(
                    "Due Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
            }
            .navigationTitle(name)
        }
    }
}

#Preview {
    DetailView(name: .constant("Name"), date: .constant(Date()), subject: .constant("subject"), completed: .constant(false))
}
