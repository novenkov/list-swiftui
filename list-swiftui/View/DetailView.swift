//
//  PersonView.swift
//  list-swiftui
//
//  Created by yn on 01.05.2020.
//  Copyright © 2020 yn. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var person: Person
    
    var body: some View {
        VStack {
            Text(person.name)
                .font(.largeTitle)
            Text(person.job)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: data[0])
    }
}
