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
        List {
            HStack {
                VStack(alignment: .leading) {
                    Text("The wheel rolled down the hill")
                        .font(.subheadline)
                        .padding(2)
                    Text("\"The wheel rolling down the hill.\"")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .italic()
                        .truncationMode(.tail)
                }
                Spacer()
                Image(systemName: "play.circle")
            }
        }
    }
}

struct AssessmentCorrections_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentCorrections(errors: ["The wheel rolling down the hill"], selfCorrections: ["The wheel rolling down the hill"], meaning: ["The wheel rolling down the hill"], structure: ["The wheel rolling down the hill"], visual: ["The wheel rolling down the hill"])
    }
}
