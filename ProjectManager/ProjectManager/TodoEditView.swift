//
//  Todo.swift
//  ProjectManager
//
//  Created by 오승기 on 2021/11/01.
//

import SwiftUI

struct TodoEditView: View {
    var body: some View {
        VStack {
            ToDoEditBar()
            ToDoEditText()
        }
    }
}

struct ToDoEditBar: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Cancel")
            }
            Spacer()
            Text("ToDo")
            Spacer()
            Button {
                
            } label: {
                Text("Done")
            }
        }
        .padding()
        .background(Color.gray)
    }
}

struct ToDoEditText: View {
    @State private var title = ""
    @State private var date = Date()
    @State private var description = ""
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .padding()
                .background(Color.white.shadow(color: .gray, radius: 3, x: 1, y: 4))
            DatePicker(selection: $date, label: {})
                .datePickerStyle(.wheel)
                .labelsHidden()
            TextEditor(text: $description)
                .background(Color.white)
                .shadow(color: .gray, radius: 5)
        }
    }
}

struct TodoEditView_Previews: PreviewProvider {
    static var previews: some View {
        TodoEditView()
    }
}
