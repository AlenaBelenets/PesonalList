//
//  PersonsListTableViewController.swift
//  PesonalList
//
//  Created by Alena Belenets on 23.07.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let onePerson = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0:
            content.text = onePerson.phone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = onePerson.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }

        cell.contentConfiguration = content

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
