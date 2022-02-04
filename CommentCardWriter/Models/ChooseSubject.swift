//
//  ChooseSubject.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import Foundation

class ChooseSubject {
    @Published var subjects: [Subject]
    private var numOfSubjects: Int
    
    func incNum() {
        numOfSubjects += 1
        subjects.append(Subject(nm: "Subject\(numOfSubjects)", tpcs: ["None"]))
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
    }
}
