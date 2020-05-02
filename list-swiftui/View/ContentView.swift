//
//  ContentView.swift
//  list-swiftui
//
//  Created by yn on 01.05.2020.
//  Copyright © 2020 yn. All rights reserved.
//

import SwiftUI

//View
struct ContentView: View {
    var body: some View {
        NavigationView {
            List(data) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    HStack {
                        Image(systemName: person.pic)
                        VStack(alignment: .leading) {
                            Text(person.name)
                            Text(person.job)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationBarTitle("Persons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
