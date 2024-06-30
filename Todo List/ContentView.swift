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
    var dueDate: String
    var dueMonth: String
    var dueYear: String
    var subject: String
    var completed: Bool
}

struct ContentView: View {
    @State var homework: [Item] = [
        Item(name: "New", dueDate: "Select date", dueMonth: "Select month", dueYear: "Select year", subject: "Subject", completed: false)
    ]
    var body: some View {
        NavigationStack {
            List(homework) { homeworkItem in
                NavigationLink {
                    DetailView(
                        name: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].name,
                        dueDate: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].dueDate,
                        dueMonth: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].dueMonth,
                        dueYear: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].dueYear,
                        subject: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].subject,
                        completed: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].completed
                    )
                } label: {
                    VStack(alignment: .leading) {
                        Text(homeworkItem.name) // Correct usage
                            .font(.title)
                            .bold()
                        Text("Due: \(homeworkItem.dueDate) \(homeworkItem.dueMonth) \(homeworkItem.dueYear)")
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
