//
//  Contact.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
/*
class Contact{
    var firstName: String
    var lastName: String
    var emailId: String
    var phoneNumber: Int
    var address: String
    
    init(firstName: String, lastName: String, emailId: String, phoneNumber: Int, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        self.phoneNumber = phoneNumber
        self.address = address
    }
}
*/



@objc protocol ContactContract{
     var firstName: String {get set}
     var lastName: String {get set}
     var emailId: String {get set}
     var phoneNumber: Int {get set}
     var address: String {get set}
     var contactId: Int {get set}
     @objc optional var employeeId: Int {get set}
     @objc optional var jobRole: String {get set}
     func displayNames()
 }
class Contact: ContactContract{
     var firstName: String
     var lastName: String
     var emailId: String
     var phoneNumber: Int
     var address: String
     var contactId: Int
    
    init(contactId: Int, firstName: String, lastName: String, emailId: String, phoneNumber: Int, address: String){
        self.contactId = contactId
         self.firstName = firstName
         self.lastName = lastName
         self.emailId = emailId
         self.phoneNumber = phoneNumber
         self.address = address
     }
    func displayNames(){
//        for details in 0..<DisplayMenu.normalConatctDetails.count{
//            print("firstName:   \(DisplayMenu.normalConatctDetails[details].firstName)")
//            print("lastName:   \(DisplayMenu.normalConatctDetails[details].lastName)")
//        }
        
//        for details in 0..<DataStorage.dataStorage.getContact().count{
//            if let detail = DataStorage.dataStorage.getContact()[details] as? Contact{
//                print("firstName:   \(detail.firstName)")
//                print("lastName:   \(detail.lastName)")
//            }
//        }
        print("                         ")
        print("contactID:   \(contactId)")
        print("firstName:   \(firstName)")
        print("lastName:   \(lastName)")
    }

 }

 
