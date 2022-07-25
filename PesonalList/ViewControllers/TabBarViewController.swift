//
//  TabBarViewController.swift
//  PesonalList
//
//  Created by Alena Belenets on 25.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        guard let firstVC = viewControllers?.first
                as? PersonListViewController else { return }
        guard let secondVC = viewControllers?.last
                as? PersonsListTableViewController else { return }

        let persons = Person.getPerson()
        firstVC.persons = persons
        secondVC.persons = persons
    }
}
