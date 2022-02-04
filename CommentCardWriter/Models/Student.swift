//
//  Student.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import Foundation

class Student: ObservableObject {
    var subjectsChosen: ChooseSubject
    
    init() {
        subjectsChosen = ChooseSubject()
    }
}
