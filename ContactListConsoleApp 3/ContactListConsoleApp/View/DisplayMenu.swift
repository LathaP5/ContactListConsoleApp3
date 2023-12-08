//
//  DisplayMenu.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
class DisplayMenu{
    static var normalConatctDetails: [Contact] = []
    static var zohoContactDetails: [ZohoContact] = []
    static func showContactListOperations(){
        print("                          ")
        print("--------------------------")
        print("1. Add new contact")
        print("2. Update contact details")
        print("3. Search contact")
        print("4. Delete contact")
        print("5. View the all contacts")
        print("6. Exit")
        print("--------------------------")
    }
    static func showMessage(){
        print("This default case so enter valid case")
    }
    static func showDetails(detail: ContactContract){
        print("Your contact details are: ")
        print("                          ")
        if let zohoContact = detail as? ZohoContact{
            print("EmployeeId: \(zohoContact.employeeId)")
            print("LastName: \(zohoContact.lastName)")
            print("FirstName: \(zohoContact.firstName)")
            print("JobRole: \(zohoContact.jobRole)")
            print("EmailId: \(zohoContact.emailId)")
            print("PhoneNumber: \(zohoContact.phoneNumber)")
            print("Address: \(zohoContact.address)")
        }
        else if let contact = detail as? Contact{
            print("FirstName: \(contact.firstName)")
            print("LastName: \(contact.lastName)")
            print("EmailId: \(contact.emailId)")
            print("PhoneNumber: \(contact.phoneNumber)")
            print("Address: \(contact.address)")
        }
    }
    static func displayContacts(contacts: [ContactContract]){
//        print("The all contacts are")
//        for index in 0..<contacts.count{
//            if let contact = contacts[index] as? Contact{
//                normalConatctDetails.append(contact)
////                print("                          ")
////                print("FirstName: \(contacts[index].firstName)")
////                print("LastName: \(contacts[index].lastName)")
////                print("EmailId: \(contacts[index].emailId)")
////                print("PhoneNumber: \(contacts[index].phoneNumber)")
////                print("Address: \(contacts[index].address)")
//                contact.displayNames()
//            }
//            else if let zohoContact = contacts[index] as? ZohoContact{
//                zohoContactDetails.append(zohoContact)
////                print("                          ")
////                print("EmployeeId: \(zohoContact.employeeId)")
////                print("LastName: \(zohoContact.lastName)")
////                print("FirstName: \(zohoContact.firstName)")
////                print("JobRole: \(zohoContact.jobRole)")
////                print("EmailId: \(zohoContact.emailId)")
////                print("PhoneNumber: \(zohoContact.phoneNumber)")
////                print("Address: \(zohoContact.address)")
//                zohoContact.displayNames()
//            }
//        }
////        Contact.displayNames()
////        ZohoContact.displayNames()
        ///
        print("The all contacts are")
        for contactDetail in contacts{
            contactDetail.displayNames()
        }
    }
    static func showAddContactConformMessage(){
        print("Your contact was added successfully")
    }
    static func showContactNotFoundMessage(){
        print("Your contact not found")
    }
    static func showContactsNotFoundMessage(){
        print("No Contacts are found, the contactlist is emply")
    }
    static func showContactDeletedConformationMessage(){
        print("Your contact is deleted successfully")
    }
    static func showEditContactListOptions(){
        print("                          ")
        print("--------------------------")
        print("The fields for edit")
        print("1. LastName")
        print("2. EmailId")
        print("3. PhoneNumber")
        print("4. Address")
        print("5. Exit")
        print("--------------------------")
    }
}

extension DisplayMenu{
    static func showContactOption(){
        print("                          ")
        print("--------------------------")
        print("1. Normal contact")
        print("2. Zoho contact")
        print("--------------------------")
    }
    static func showContinueOptionMessage(){
        print("Do you want to continue? if continue press 1")
    }
    static func showZohoContactNotFoundMessage(){
        print("You are not a zoho contact")
    }
    static func showEditContactListOptionsForContact(){
        print("                          ")
        print("--------------------------")
        print("The fields for edit")
        print("1. LastName")
        print("2. EmployeeId")
        print("3. JobRole")
        print("4. EmailId")
        print("5. PhoneNumber")
        print("6. Address")
        print("7. Exit")
        print("--------------------------")
    }
    static func showNormalContactNotFoundMessage(){
        print("You are not a normal contact")
    }
}



