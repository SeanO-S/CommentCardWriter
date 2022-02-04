//
//  SubjectView.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import SwiftUI

struct SubjectView: View {
    @State var subject: Subject
    var body: some View {
        Text("\(subject.name)")
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(subject: Subject(nm: "subjectName", tpcs: ["None"]))
    }
}
