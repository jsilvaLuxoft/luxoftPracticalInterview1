//
//  TodoItem.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/06/20.
//

import Foundation

struct TodoItem: Codable {
    let id: String
    let isComplete: Bool
    let title: String
    let createdAt: String
    let dueDate: String
    
    enum CodingKeys: String, CodingKey {
        case id, title, createdAt, dueDate
        case isComplete = "complete"
    }
}
