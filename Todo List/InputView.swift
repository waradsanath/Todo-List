//
//  InputView.swift
//  Todo List
//
//  Created by Sanath Warad on 30/6/24.
//

import SwiftUI

struct InputView: View {
    @State var text: String
    var title: String
    var body: some View {
        HStack {
            Text(title)
            TextField(title, text: $text)
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
        }
    }
}

#Preview {
    InputView(text: "text", title: "title")
}
