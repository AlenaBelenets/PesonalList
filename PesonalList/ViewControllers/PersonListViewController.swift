//
//  ViewController.swift
//  PesonalList
//
//  Created by Alena Belenets on 20.07.2022.
//

import UIKit

class PersonListViewController: UITableViewController {

    var persons: [Person] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let onePerson = persons[indexPath.row]

        content.text = onePerson.fullName
        cell.contentConfiguration = content

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let infoVC = segue.destination as? InformationViewController else { return }
            infoVC.person = persons[indexPath.row]
        }
    }

}
