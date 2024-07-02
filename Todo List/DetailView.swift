//
//  DetailView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var name: String
    @Binding var dueDate: Date
    @Binding var subject: String
    @Binding var completed: Bool
    var body: some View {
        NavigationStack {
            List {
                InputView(text: name, title: "Name")
                DatePicker(
                    "Due Date",
                    selection: $dueDate,
                    displayedComponents: [.date]
                )
                InputView(text: subject, title: "Subject")
                Toggle(isOn: $completed) {
                    Text("Completed")
                }
            }
            .navigationTitle(name)
        }
    }
}

#Preview {
    DetailView(name: .constant("name"), dueDate: .constant(Date()), subject: .constant("subject"), completed: .constant(false))
}
