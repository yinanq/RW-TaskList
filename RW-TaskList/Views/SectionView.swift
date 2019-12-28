//
//  SectionView.swift
//  RW-TaskList
//
//  Created by Yinan Qiu on 12/26/19.
//  Copyright © 2019 Yinan. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(
            header: Text("\(prioritizedTasks.priority.rawValue.capitalized) Priority")
        ) {
            ForEach(prioritizedTasks.tasks) { index in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
            .onMove { from, to in
                self.prioritizedTasks.tasks.move(fromOffsets: from, toOffset: to)
            }
            .onDelete { indexSet in
                self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}
