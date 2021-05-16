//
//  blurb.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/6/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import Foundation

struct Blurb: Codable, Identifiable {
    var id: Int
    var assessmentId: Int
    var text: String
}
