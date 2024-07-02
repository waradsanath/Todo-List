//
//  DetailView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var item: Item
    var body: some View {
        NavigationStack {
            List {
                InputView(text: item.name, title: "Name")
                DatePicker(
                    "Due Date",
                    selection: $item.dueDate,
                    displayedComponents: [.date]
                )
                InputView(text: item.subject, title: "Subject")
                Toggle(isOn: $item.completed) {
                    Text("Completed")
                }
            }
            .navigationTitle(item.name)
        }
    }
}

#Preview {
    DetailView(item: .constant(Item(name: "New", dueDate: Date(timeIntervalSinceNow: 86400), subject: "Subject", completed: false)))
}
