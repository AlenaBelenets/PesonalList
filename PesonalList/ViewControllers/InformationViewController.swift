//
//  InformationViewController.swift
//  PesonalList
//
//  Created by Alena Belenets on 22.07.2022.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName

        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
