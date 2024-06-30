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
            ForEach(homework, id: \.id) { homework in
                List {
                    VStack (alignment: .leading) {
                        Text(homework.name)
                            .font(.title)
                            .bold()
                        Text("Due: \(homework.dueDate) \(homework.dueMonth) \(homework.dueYear)")
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
