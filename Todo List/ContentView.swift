//
//  ContentView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var dueDate: Date
    var subject: String
    var completed: Bool
}

struct ContentView: View {
    @State var homework: [Item] = [
        Item(name: "New", dueDate: Date(timeIntervalSinceNow: 86400), subject: "Subject", completed: false)
    ]
    var body: some View {
        NavigationStack {
            List($homework) { $item in
                NavigationLink {
                    DetailView(item: $item)
                } label: {
                    VStack(alignment:.leading) {
                        Text(item.name)
                            .font(.title)
                            .bold()
                        Text("Due: \(item.dueDate, formatter: dateFormatter)")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                    }
                }
            }
            .navigationTitle("Homework")
        }
    }
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
}

#Preview {
    ContentView()
}
