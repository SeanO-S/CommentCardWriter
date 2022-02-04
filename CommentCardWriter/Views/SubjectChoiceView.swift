//
//  SubjectChoiceView.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import SwiftUI

struct SubjectChoiceView: View {
    @StateObject var student: Student
    var body: some View {
        VStack{
            HStack{
                Text("Add or subtract subjetcs: →")
                Spacer()
                Button("➕") {
                    student.subjectsChosen.incNum()
                }
                Button("➖") {
                    student.subjectsChosen.decNum()
                }
            }//end of H
            NavigationView{
                List(student.subjectsChosen.subjects, id: \.self.name) { subject in
                    SubjectView(subject: subject)
                }
            }//end of NV
        }//end of V
    }
}

struct SubjectChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectChoiceView(student: Student())
    }
}
