//
//  TaskStore.swift
//  RW-TaskList
//
//  Created by Yinan Qiu on 12/25/19.
//  Copyright © 2019 Yinan. All rights reserved.
//

//import Foundation
import Combine

class TaskStore: ObservableObject {
//    @Published var tasks = [
//        "task 1",
//        "task 2",
//        "task 3",
//        "task 4",
//        "task 5",
//        "task 6",
//        "task 7",
//        "task 8",
//        "task 9",
//        "task 10"
//        ].map { Task(name: $0) }
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high, names: [
            "task 1",
            "task 2"
        ]),
        PrioritizedTasks(priority: .medium, names: [
            "task 3",
            "task 4",
            "task 5",
            "task 6"
        ]),
        PrioritizedTasks(priority: .low, names: [
            "task 7",
            "task 8"
        ]),
        PrioritizedTasks(priority: .no, names: [
            "task 9",
            "task 10"
        ])
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}

private extension TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map { Task(name: $0) }
        )
    }
}
