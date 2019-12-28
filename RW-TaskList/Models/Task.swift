//
//  Task.swift
//  RW-TaskList
//
//  Created by Yinan Qiu on 12/25/19.
//  Copyright © 2019 Yinan. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
