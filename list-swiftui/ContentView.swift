//
//  ContentView.swift
//  list-swiftui
//
//  Created by yn on 01.05.2020.
//  Copyright © 2020 yn. All rights reserved.
//

import SwiftUI

struct Person {
    let name: String
    let job: String
}

let persons = [
    Person(name: "John Swing", job: "Producer"),
    Person(name: "Robert Delta", job: "Developer"),
    Person(name: "Bobby Stone", job: "Designer"),
    Person(name: "Melissa Burn", job: "Product Manager"),
    Person(name: "Genry Black", job: "Driver")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(persons, id: \.name) { person in
                NavigationLink(destination: PersonView()) {
                    HStack {
                        Image(systemName: "ear")
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
