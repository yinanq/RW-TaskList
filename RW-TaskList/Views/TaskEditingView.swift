//
//  TaskEditingView.swift
//  RW-TaskList
//
//  Created by Yinan Qiu on 12/26/19.
//  Copyright © 2019 Yinan. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    
    @Binding var task: Task
    
    var body: some View {
        Form {
            TextField("Task name", text: $task.name)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "preview")))
    }
}
