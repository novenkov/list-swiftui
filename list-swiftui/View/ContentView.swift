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
                        Image(person.pic)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        VStack(alignment: .leading) {
                            Text(person.name)
                            Text(person.job)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationBarItems(
                leading: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Add")
                }
            )
            .navigationBarTitle("Persons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
