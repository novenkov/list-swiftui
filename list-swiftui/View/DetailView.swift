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
        Form {
            Section {
                HStack(spacing: 20.0) {
                    Image(person.pic)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(person.name)
                            .font(.title)
                        Text(person.job)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
            }
            Section(header: Text("DESCRIPTION")) {
                Text(person.description)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
            }
        }
        .navigationBarTitle(Text(person.name), displayMode: .inline)
        .navigationBarItems(
            trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Edit")
            }
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: data[0])
    }
}
