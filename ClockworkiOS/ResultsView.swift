//
//  ResultsView.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/13/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import SwiftUI

struct ResultsView: View {
    var history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                Group {
                    HStack {
                    Text("The Wheel")
                        .font(.title)
                        .navigationBarTitleDisplayMode(.inline)
                        .padding()
                    Spacer()
                    Text("88%")
                        .font(.title)
                        .padding()
                    }
                    Text("Level: aa")
                        .font(.subheadline)
                        .padding(.horizontal)
                    Text("Words: 99")
                        .font(.subheadline)
                        .padding(.horizontal)
                    Spacer()
                    Spacer()
                }
                
                if let transcript = history.transcript {
                    Text("Transcript:")
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .padding(.horizontal)
                        .padding(2)
                    Text("\"\(transcript)\"")
                        .font(.subheadline)
                        .italic()
                        .padding(.horizontal)
                }
                
                Divider()
                    .padding()
                
                Group {
                    HStack(alignment: .center) {
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Time")
                                .font(.footnote)
                            Text("1:24 min")
                        }
                        .padding()
                        VStack(alignment: .leading) {
                            Text("Error Rate")
                                .font(.footnote)
                            Text("1:4")
                        }
                        .padding()
                        VStack(alignment: .leading) {
                            Text("Correction Rate")
                                .font(.footnote)
                            Text("1:4")
                        }
                        .padding()
                        Spacer()
                    }
                }
                
                Divider()
                    .padding()
                
                NavigationLink(
                    destination: Text("Errors"),
                    label: {
                        HStack {
                            Text("0 errors")
                                .padding()
                            Spacer()
                        }
                    })
                NavigationLink(
                    destination: Text("Self Corrections"),
                    label: {
                        HStack {
                            Text("0 self corrections")
                                .padding()
                            Spacer()
                        }
                    })
                NavigationLink(
                    destination: Text("Meaning"),
                    label: {
                        HStack {
                            Text("0 meaning")
                                .padding()
                            Spacer()
                        }
                        
                    })
                NavigationLink(
                    destination: Text("Structure"),
                    label: {
                        HStack {
                            Text("0 structure")
                                .padding()
                            Spacer()
                        }
                    })
                NavigationLink(
                    destination: Text("Visual"),
                    label: {
                        HStack {
                            Text("0 visual")
                                .padding()
                            Spacer()
                        }
                    })
                
            }
            .navigationBarTitle("Results")
            .navigationBarItems(trailing: Text("Retry"))
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(history: History(assessmentId: 1, lengthInMinutes: 2, transcript: "The wheel rolls down the hill."))
    }
}
