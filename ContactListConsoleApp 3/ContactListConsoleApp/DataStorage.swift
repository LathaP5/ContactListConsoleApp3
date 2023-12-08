//
//  DataStorage.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
class DataStorage{
    private var contact: [ContactContract]
    private init(contact: [ContactContract]) {
        self.contact = contact
    }
    public static var dataStorage = DataStorage(contact: [])
    public func setContact(newContact: ContactContract){
        contact.append(newContact)
    }
    public func getContact() -> [ContactContract]{
        return contact
    }
    public func removeContact(contactIndex: Int){
        contact.remove(at: contactIndex)
    }
}
