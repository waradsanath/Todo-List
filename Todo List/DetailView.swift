//
//  DetailView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var name: String
    @Binding var dueDate: String
    @Binding var dueMonth: String
    @Binding var dueYear: String
    @Binding var subject: String
    @Binding var completed: Bool
    var body: some View {
        Text("")
    }
}

#Preview {
    DetailView(name: .constant(""), dueDate: .constant(""), dueMonth: .constant(""), dueYear: .constant(""), subject: .constant(""), completed: .constant(false))
}
