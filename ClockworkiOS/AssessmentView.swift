//
//  AssessmentView.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/12/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import SwiftUI

struct AssessmentView: View {
    @State private var transcript = ""
    @State private var isRecording = false
    private let speechRecognizer = SpeechRecognizer()
    var blurbs: [Blurb]
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            ForEach(blurbs) { blurb in
                Text("\(blurb.text)")
                    .font(.headline)
                    .padding(4)
            }
            Spacer()
            Spacer()
        }
        .onAppear {
            speechRecognizer.record(to: $transcript)
            isRecording = true
        }
        .onDisappear {
            speechRecognizer.stopRecording()
            isRecording = false
        }
        .navigationBarItems(trailing:
            NavigationLink(destination: ResultsView(history: History(id: UUID(), assessmentId: blurbs[0].assessmentId, lengthInMinutes: 2, transcript: transcript))) {
                Text("Done")
            }
        )
    }
}

struct AssessmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentView(blurbs: [
                        Blurb(id: 1, assessmentId: 1, text: "This is the first sentence that you must read."),
                        Blurb(id: 2, assessmentId: 1, text: "This is the second sentence that you must read."),
                        Blurb(id: 3, assessmentId: 1, text: "This is the third sentence that you must read.")
        ])
    }
}
