//
//  main.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 05/06/23.
//

import Foundation
class ContactMain{
    fileprivate func showDetails(){
        let contactList = ContactList(contactId: 100)
        contactList.showMenu()
    }
}

let contactMain = ContactMain()
contactMain.showDetails()
