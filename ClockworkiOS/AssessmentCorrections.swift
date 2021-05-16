//
//  AssessmentCorrections.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/14/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import SwiftUI

struct AssessmentCorrections: View {
    var errors: [String]
    var selfCorrections: [String]
    var meaning: [String]
    var structure: [String]
    var visual: [String]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AssessmentCorrections_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentCorrections(errors: ["The wheel rolling down the hill"], selfCorrections: ["The wheel rolling down the hill"], meaning: ["The wheel rolling down the hill"], structure: ["The wheel rolling down the hill"], visual: ["The wheel rolling down the hill"])
    }
}
