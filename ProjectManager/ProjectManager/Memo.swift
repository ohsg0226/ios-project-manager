//
//  Memo.swift
//  ProjectManager
//
//  Created by 오승기 on 2021/11/01.
//

import Foundation

enum TodoState {
    case todo
    case doing
    case done
    
    var description: String {
        switch self {
        case .todo:
            return "TODO"
        case .doing:
            return "DOING"
        case .done:
            return "DONE"
        }
    }
}

struct Memo: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var date: Date
    var state: TodoState
}

extension Date {
    func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        return dateFormatter.string(from: self)
    }
}
