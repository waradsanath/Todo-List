//
//  ContentView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var dueDate: Date
    var subject: String
    var completed: Bool
}

struct ContentView: View {
    @AppStorage ("homework") var homework: [Item] = [
        Item(name: "New", dueDate: Date(timeIntervalSinceNow: 86400), subject: "Subject", completed: false)
    ]
    var body: some View {
        NavigationStack {
            List(homework) { homeworkItem in
                NavigationLink {
                    DetailView(
                        name: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].name,
                        dueDate: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].dueDate,
                        subject: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].subject,
                        completed: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].completed
                    )
                } label: {
                    VStack(alignment: .leading) {
                        Text(homeworkItem.name)
                            .font(.title)
                            .bold()
                        Text("Due: \(homeworkItem.dueDate)")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                    }
                }
            }
            .navigationTitle("Homework")
        }
    }
}

#Preview {
    ContentView()
}
