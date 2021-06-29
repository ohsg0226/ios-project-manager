//
//  TableItem.swift
//  ProjectManager
//
//  Created by 강경 on 2021/06/29.
//

import UIKit

struct TableItem {
    let title: String
    let summary: String
    let date: String
    
    init(title: String,
         summary: String,
         date: String) {
        self.title = title
        self.summary = summary
        self.date = date
    }
}
