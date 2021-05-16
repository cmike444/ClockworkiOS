//
//  AssessmentDetail.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/12/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import SwiftUI

struct AssessmentDetail: View {
    var name: String
    var level: String
    var wordCount: Int
    var description: String
    var blurbs: [Blurb]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Group {
                Text(self.name)
                    .font(.title)
                    .navigationBarTitleDisplayMode(.inline)
                    .padding()
                Text("Level: \(self.level)")
                    .font(.subheadline)
                    .padding(.horizontal)
                Text("Words: \(self.wordCount)")
                    .font(.subheadline)
                    .padding(.horizontal)
                Text(self.description)
                    .padding()
                    .font(.body)
                Spacer()
            }
            
        }
        .background(Color(.systemBackground))
        .navigationBarItems(trailing:
            NavigationLink(
                destination: AssessmentView(blurbs: self.blurbs),
                label: {
                    Text("Start")
            })
        )
    }
}

struct AssessmentDetail_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentDetail(name: "name", level: "aa", wordCount: 99, description: "test, 1, 2, 3!", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
    }
}
