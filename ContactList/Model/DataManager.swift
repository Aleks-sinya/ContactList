//
//  DataManager.swift
//  ContactList
//
//  Created by Алексей Синяговский on 22.03.2022.
//

import Foundation


class DataManager {
    
    static let info = DataManager()
    
    let names = [
        "James",
        "Robert",
        "John",
        "David",
        "Paul",
        "Mark",
        "Donald",
        "Richard",
        "Steven",
        "Edward"
    ]
    
    let surNames = [
        "Smith",
        "Johnson",
        "Williams",
        "Jones",
        "Brown",
        "Davis",
        "Miller",
        "Wilson",
        "Taylor",
        "Anderson"
    ]
    
    let phoneNumbers = [
        "47583920",
        "82748527",
        "38574199",
        "39230584",
        "98472053",
        "19582048",
        "45829583",
        "59104829",
        "48294857",
        "72947295"
    ]
    
    let emailAddresses = [
        "asndfjn@mail.ru",
        "sdkfk@mail.ru",
        "poeri@google.com",
        "bkmgbnf@yandex.ru",
        "weorjgn@yahoo.com",
        "bnfjfk@icloud.com",
        "lsdkfkjg@mail.ru",
        "flkgks@google.com",
        "oeorj@yandex.ru",
        "qpwerj@icloud.com"
    ]
}

enum Image: String {
    case phone = "phone"
    case tray = "tray"
}
