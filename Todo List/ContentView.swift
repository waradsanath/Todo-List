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
    var date: Date
    var subject: String
    var completed: Bool
}

struct ContentView: View {
    @State var homework: [Item] = [
        Item(name: "New", date: Date(timeInterval: timeIntervalSince1970: 0), subject: "Subject", completed: false)
    ]
    var body: some View {
        NavigationStack {
            List(homework) { homeworkItem in
                NavigationLink {
                    DetailView(
                        name: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].name,
                        date: $homework[homework.firstIndex(where: { $0.id == homeworkItem.id })!].dueDate,
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
