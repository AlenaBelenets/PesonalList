//
//  Model.swift
//  PesonalList
//
//  Created by Alena Belenets on 21.07.2022.
//

import Foundation

struct Person {

    let name : String
    let lastName: String
    let phone: String
    let email: String

    var fullName: String {
        "\(name) \(lastName)"
    }

    static func getPerson() -> [Person] {
        var persons: [Person] = []

        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.lastNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()

        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )

        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                lastName: surnames[index],
                phone: phones[index],
                email: emails[index]
            )

            persons.append(person)
        }

        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
