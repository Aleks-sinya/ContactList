//
//  AnotherPersonListViewController.swift
//  ContactList
//
//  Created by Алексей Синяговский on 22.03.2022.
//

import UIKit

class AnotherPersonListViewController: UITableViewController {

    private let personList = Person.getListPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Image.phone.rawValue)
            content.text = person.phoneNumber
        default:
            content.image = UIImage(systemName: Image.tray.rawValue)
            content.text = person.emailAddress
        }

        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactsVC.person = personList[indexPath.row]
    }

}
