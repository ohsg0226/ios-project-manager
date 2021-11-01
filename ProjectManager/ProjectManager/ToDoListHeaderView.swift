//
//  ToDoListHeaderView.swift
//  ProjectManager
//
//  Created by 오승기 on 2021/11/01.
//

import SwiftUI

struct ToDoListHeaderView: View {
    var body: some View {
        HStack {
            Text("todo")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
            ZStack{
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 30, height: 30)
                Text("\(testData.count)")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ToDoListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListHeaderView()
    }
}