//
//  SubjectChoiceView.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import SwiftUI

struct SubjectChoiceView: View {
    @StateObject var student: Student
    @StateObject var subjectsObject: ChooseSubject
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
                List(subjectsObject.subjects, id: \.self.name) { subject in
                    NavigationLink(destination: SubjectView(subject: subject)){ Text(subject.name)
                    }
                }
            }//end of NV
        }//end of V
    }
}

struct SubjectChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        let student = Student()
        SubjectChoiceView(student: student, subjectsObject: student.subjectsChosen)
    }
}
