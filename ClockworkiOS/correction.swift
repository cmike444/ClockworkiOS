//
//  correction.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/14/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import Foundation

struct Correction: Codable, Identifiable {
    var id: Int
    var blurbId: Int
    var type: String
    var originalText: String
    var transcriptText: String
    var description: String
}

enum CorrectionType: String {
    case error, selfCorrection, meaning, structure, visual, pace
}
