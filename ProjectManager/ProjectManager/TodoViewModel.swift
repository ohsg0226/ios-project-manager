//
//  TodoViewModel.swift
//  ProjectManager
//
//  Created by 오승기 on 2021/11/03.
//

import Foundation
import SwiftUI

final class TodoViewModel: ObservableObject {
    @Published var memo: [Memo] = []
    @Published var isEdited = false
    
    func create(todo: Memo) {
        memo.append(todo)
    }
    
}
