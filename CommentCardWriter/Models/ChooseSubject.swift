//
//  ChooseSubject.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import Foundation

class ChooseSubject: ObservableObject {
    @Published var subjects: [Subject]
    private var numOfSubjects: Int
    private var subjectToAdd: Subject
    
    func incNum() {
        numOfSubjects += 1
        subjectToAdd = Subject(nm: "Subject\(numOfSubjects)", tpcs: ["None"])
        subjects.append(subjectToAdd)
    }
    
    func decNum() {
        numOfSubjects -= 1
        subjects.removeLast()
    }
    
//    func getSubjects() -> [Subject] {
//        return subjects
//    }
    
    init(){
        subjects = []
        numOfSubjects = 0
        subjectToAdd = Subject(nm: "Subject\(numOfSubjects)", tpcs: ["None"])
    }
}
