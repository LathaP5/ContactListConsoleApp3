//
//  ContactList.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
class ContactList{
    var contactId: Int
    init(contactId: Int){
        self.contactId = contactId
    }
    var conatctListOperations = ConatctListOperations()
    func showMenu(){
        var continueOptionBoolValue: Bool
        repeat
        {
            DisplayMenu.showContactOption()
            let choiceForContact = UserInput.getChoiceForContact()
            if choiceForContact == 1{
            normalContact: repeat{
                    DisplayMenu.showContactListOperations()
                    let choice = UserInput.getChoice()
                    switch ContactListMenu.RawValue(choice){
                    case ContactListMenu.add.rawValue:
                        getAddContactDetails()
//                    case ContactListMenu.edit.rawValue:
//                        getEditContactDetail()
//                    case ContactListMenu.search.rawValue:
//                        getSearchContactDetail()
//                    case ContactListMenu.delete.rawValue:
//                        getDeleteContactDetail()
                    case ContactListMenu.list.rawValue:
                        getListContactDetail()
                    case ContactListMenu.exit.rawValue:
                       break normalContact
                    default:
                        DisplayMenu.showMessage()
                    }
                }while true
            }
            else if choiceForContact == 2{
            zohoAccount: repeat{
                    DisplayMenu.showContactListOperations()
                    let choice = UserInput.getChoice()
                    switch ContactListMenu.RawValue(choice){
                    case ContactListMenu.add.rawValue:
                        getAddDetailsForZohoContact()
//                    case ContactListMenu.edit.rawValue:
//                        getEditContactDetailForZohoContact()
//                    case ContactListMenu.search.rawValue:
//                        getListContactDetail()
//                    case ContactListMenu.delete.rawValue:
//                        getDeleteContactDetail()
                    case ContactListMenu.list.rawValue:
                        getListContactDetail()
                    case ContactListMenu.exit.rawValue:
                        break zohoAccount
                    default:
                        DisplayMenu.showMessage()
                    }
                }while true
            }
            else if choiceForContact == 3{
                checkContactDetails()
            }
            DisplayMenu.showContinueOptionMessage()
            let continueOptionValue = UserInput.getContinueOptionValue()
            if continueOptionValue == 1{
                continueOptionBoolValue = true
            }
            else{
                continueOptionBoolValue = false
            }
        }while continueOptionBoolValue
    }
    
    
    private func getAddContactDetails(){
        let firstName = UserInput.getFirstName()
        let lastName = UserInput.getLastName()
        let emailId = UserInput.getEmail()
        let phoneNumber = UserInput.getPhoneNumber()
        let address = UserInput.getAddress()
        let contact = Contact(contactId: contactId, firstName: firstName, lastName: lastName, emailId: emailId, phoneNumber: phoneNumber, address: address)
        conatctListOperations.addContact(contact: contact)
        contactId += 1
        DisplayMenu.showAddContactConformMessage()
    }

    private func getEditContactDetail(){
        let firstName = UserInput.getNameForEdit()
        if firstName != nil {
            var lastName , emailId, address: String?
            var phoneNumber: Int?
            var contactDetail = conatctListOperations.searchContact(firstName: firstName!)
            if let contactForEdit = contactDetail as? Contact{
                DisplayMenu.showDetails(detail: contactForEdit)
            exit: repeat{
                DisplayMenu.showEditContactListOptions()
                var choice = UserInput.getChoiceForEdit()
                switch choice{
                case 1:
                    lastName = UserInput.getLastName()
                case 2:
                    emailId = UserInput.getEmail()
                case 3:
                    phoneNumber = UserInput.getPhoneNumberForEdit(firstName: firstName!)
                case 4:
                    address = UserInput.getAddress()
                case 5:
                    break exit
                default:
                    DisplayMenu.showMessage()
                }
            }while true
                if lastName == nil{
                    lastName = contactForEdit.lastName
                }
                if emailId == nil{
                    emailId = contactForEdit.emailId
                }
                if phoneNumber == nil{
                    phoneNumber = contactForEdit.phoneNumber
                }
                if address == nil{
                    address = contactForEdit.address
                }
                let contact = Contact(contactId: 7, firstName: firstName!, lastName: lastName!, emailId: emailId!, phoneNumber: phoneNumber!, address: address!)
                conatctListOperations.editContact(contact: contact)
                var editedContact = conatctListOperations.searchContact(firstName: firstName!)
                DisplayMenu.showDetails(detail: editedContact!)
            }
            else{
                DisplayMenu.showNormalContactNotFoundMessage()
            }
        }
        else{
            DisplayMenu.showContactNotFoundMessage()
        }
    }

    private func getSearchContactDetail(){
        let firstName = UserInput.getFirstNameForDeleteAndSearch()
        var detail = conatctListOperations.searchContact(firstName: firstName)
        if detail != nil{
            DisplayMenu.showDetails(detail: detail!)
        }else{
            DisplayMenu.showContactNotFoundMessage()
        }
    }
    private func getDeleteContactDetail(){
        let firstName = UserInput.getFirstNameForDeleteAndSearch()
        var conformationMessage = conatctListOperations.deleteContact(firstName: firstName)
        if conformationMessage {
            DisplayMenu.showContactDeletedConformationMessage()
        }else{
            DisplayMenu.showContactNotFoundMessage()
        }
    }
     
    private func getListContactDetail(){
        var contacts = conatctListOperations.retriveContacts()
        if contacts.count > 0 {
            DisplayMenu.displayContacts(contacts: contacts)
        }else{
            DisplayMenu.showContactsNotFoundMessage()
        }
    }
    
}

extension ContactList{
    private func getAddDetailsForZohoContact(){
        let employeeId = UserInput.getEmployeeId()
        let firstName = UserInput.getFirstName()
        let lastName = UserInput.getLastName()
        let jobRole = UserInput.getJobRole()
        let emailId = UserInput.getEmail()
        let phoneNumber = UserInput.getPhoneNumber()
        let address = UserInput.getAddress()
        let contact = ZohoContact(contactId: contactId, firstName: firstName, lastName: lastName, emailId: emailId, phoneNumber: phoneNumber, address: address, employeeId: employeeId, jobRole: jobRole)
        conatctListOperations.addContact(contact: contact)
        contactId += 1
        DisplayMenu.showAddContactConformMessage()
    }
    private func getEditContactDetailForZohoContact(){
        let firstName = UserInput.getNameForEdit()
        if firstName != nil{
            var lastName, jobRole, emailId, address: String?
            var employeeId, phoneNumber: Int?
            var contactDetail = conatctListOperations.searchContact(firstName: firstName!)
            if let contactForEdit = contactDetail as? ZohoContact{
                DisplayMenu.showDetails(detail: contactForEdit)
            exit: repeat{
                DisplayMenu.showEditContactListOptions()
                var choice = UserInput.getChoiceForEdit()
                switch choice{
                case 1:
                    lastName = UserInput.getLastName()
                case 2:
                    employeeId = UserInput.getEmployeeIdForZohoContactEdit(firstName: firstName!)
                case 3:
                    jobRole = UserInput.getJobRole()
                case 4:
                    emailId = UserInput.getEmail()
                case 5:
                    phoneNumber = UserInput.getPhoneNumberForEdit(firstName: firstName!)
                case 6:
                    address = UserInput.getAddress()
                case 7:
                    break exit
                default:
                    DisplayMenu.showMessage()
                }
            }while true
                
                if lastName == nil{
                    lastName = contactForEdit.lastName
                }
                if employeeId == nil{
                    employeeId = contactForEdit.employeeId
                }
                if jobRole == nil{
                    jobRole = contactForEdit.jobRole
                }
                if emailId == nil{
                    emailId = contactForEdit.emailId
                }
                if phoneNumber == nil{
                    phoneNumber = contactForEdit.phoneNumber
                }
                if address == nil{
                    address = contactForEdit.address
                }
                let contact = ZohoContact(contactId: 7, firstName: firstName!, lastName: lastName!, emailId: emailId!, phoneNumber: phoneNumber!, address: address!, employeeId: employeeId!, jobRole: jobRole!)
                conatctListOperations.editContact(contact: contact)
                var editedContact = conatctListOperations.searchContact(firstName: firstName!)
                DisplayMenu.showDetails(detail: editedContact!)
            }
        }
        else{
            DisplayMenu.showZohoContactNotFoundMessage()
        }
    }
    func checkContactDetails(){
        
    }
    
}

