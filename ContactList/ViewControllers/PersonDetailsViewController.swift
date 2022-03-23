//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Алексей Синяговский on 22.03.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailAddressLabel.text = "Email: \(person.emailAddress)"
        title = person.fullName
    }
}
