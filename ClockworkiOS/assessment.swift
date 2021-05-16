//
//  assessment.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/6/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import Foundation

struct Assessment: Codable, Identifiable {
    var id: Int
    var name: String
    var level: String
    var wordCount: Int
    var description: String
    var blurbs: [Blurb]
}
