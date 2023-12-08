//
//  ContactListOperations.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 10/06/23.
//

import Foundation
class ConatctListOperations{
    func addContact(contact: ContactContract){
        DataStorage.dataStorage.setContact(newContact: contact)
    }
    
    func editContact(contact: ContactContract){
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].firstName == contact.firstName{
                DataStorage.dataStorage.getContact()[index].lastName = contact.lastName
                DataStorage.dataStorage.getContact()[index].emailId = contact.emailId
                DataStorage.dataStorage.getContact()[index].phoneNumber = contact.phoneNumber
                DataStorage.dataStorage.getContact()[index].address = contact.address
            }
        }
    }
    
     
    func searchContact(firstName: String) -> ContactContract?{
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].firstName == firstName{
                return DataStorage.dataStorage.getContact()[index]
            }
        }
        return nil
    }
    func deleteContact(firstName: String) -> Bool {
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].firstName == firstName{
                DataStorage.dataStorage.removeContact(contactIndex: index)
                return true
            }
        }
        return false
    }
    
    func retriveContacts() -> [ContactContract]{
        return DataStorage.dataStorage.getContact()
    }
}

