//
//  ContentView.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/6/21.
//

import SwiftUI

struct AssessmentRow: View {
    
    var assessment: Assessment
    var body: some View {
        NavigationLink(destination: AssessmentDetail(name: assessment.name, level: assessment.level, wordCount: assessment.wordCount, description: assessment.description, blurbs: assessment.blurbs)) {
            Button(action: {
                print("Assessment Viewed!")
            }, label: {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(assessment.name).font(.system(size: 14, weight: .medium))
                        Text(assessment.description).font(.system(size: 12, weight: .light)).padding(1).truncationMode(.tail).frame(maxHeight: 34)
                    }.padding(3)
                    Text(assessment.level).font(.system(size: 12, weight: .medium)).frame(width: 30, height: 24).background(Color.gray.opacity(0.1)).cornerRadius(12)
                }
            })
        }
        
    }
}

struct ContentView: View {
    
    @State private var searchText : String = ""
    
    var body: some View {
        
        let one = Assessment(id: 1, name: "The Wheel", level: "D", wordCount: 99, description: "Another option for customizing the navigation bar includes setting its title at a larger size, thus increasing the size of the UINavigationBar.", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
        
        let two = Assessment(id: 2, name: "The Whale", level: "A", wordCount: 99, description: "A menu attachment provides extended and easy access to application features in one place. The sample attaches a UIMenu to the right side UIBarButtonItem control:", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
        
        let three = Assessment(id: 3, name: "The Hat", level: "aa", wordCount: 99, description: "A menu attachment provides extended and easy access to application features in one place. The sample attaches a UIMenu to the right side UIBarButtonItem control:", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
        
        let four = Assessment(id: 4, name: "The Car", level: "C", wordCount: 99, description: "A menu attachment provides extended and easy access to application features in one place. The sample attaches a UIMenu to the right side UIBarButtonItem control:", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
        
        let five = Assessment(id: 5, name: "The Wig", level: "J", wordCount: 99, description: "A menu attachment provides extended and easy access to application features in one place. The sample attaches a UIMenu to the right side UIBarButtonItem control:", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])
        
        let six = Assessment(id: 5, name: "The Hound", level: "F", wordCount: 99, description: "A menu attachment provides extended and easy access to application features in one place. The sample attaches a UIMenu to the right side UIBarButtonItem control:", blurbs: [
                Blurb(id: 1, assessmentId: 1, text: "One"),
                Blurb(id: 2, assessmentId: 1, text: "Two"),
                Blurb(id: 3, assessmentId: 1, text: "Three")
            ])

        let assessments = [one, two, three, four, five, six]

        
        NavigationView {
            
            VStack {
                
                SearchBar(text: $searchText)
                
                List(assessments.filter{$0.name.lowercased().contains(searchText.lowercased()) || searchText == ""}, rowContent: AssessmentRow.init)
                    .navigationBarTitle(Text("Assessments"), displayMode: .large)
                    .listStyle(PlainListStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            .previewLayout(.device)
            .preferredColorScheme(.light)
    }
}

