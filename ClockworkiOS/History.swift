//
//  History.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/13/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var assessmentId: Int
    var lengthInMinutes: Int
    var transcript: String?

    init(id: UUID = UUID(), date: Date = Date(), assessmentId: Int, lengthInMinutes: Int, transcript: String? = nil) {
        self.id = id
        self.date = date
        self.assessmentId = assessmentId
        self.lengthInMinutes = lengthInMinutes
        self.transcript = transcript
    }
}
