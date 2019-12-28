//
//  TaskStore.PrioritizedTasks.swift
//  RW-TaskList
//
//  Created by Yinan Qiu on 12/26/19.
//  Copyright © 2019 Yinan. All rights reserved.
//


extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority }
}
