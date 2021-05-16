//
//  AssessmentRowItem.swift
//  ClockworkiOS
//
//  Created by Chris Mikelson on 5/12/21.
//  Copyright © 2021 Troth Management. All rights reserved.
//

import SwiftUI

struct AssessmentRowItem: View {
    
    var assessment: Assessment
    
    var body: some View {
        NavigationLink(destination: AssessmentDetail(name: assessment.name, level: assessment.level, description: assessment.description)) {
            Button(action: {
                print("Assessment Viewed!")
            }, label: {
                HStack {
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

struct AssessmentRowItem_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentRowItem(name: "assessment.name", level: "assessment.level", description: "assessment.description")
    }
}
