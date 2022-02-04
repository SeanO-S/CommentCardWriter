//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Okuyama-Smith, Sean (NA) on 04/02/2022.
//

import SwiftUI

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            SubjectChoiceView(student: Student())
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("SCV")
                }
            CommentCardView()
                .tabItem{
                    Image(systemName: "chart.pie")
                    Text("CCV")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
