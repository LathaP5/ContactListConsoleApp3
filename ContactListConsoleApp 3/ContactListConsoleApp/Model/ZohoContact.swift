//
//  ZohoContact.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 15/06/23.
//

import Foundation
/*
class ZohoContact: Contact{
    var employeeId: Int
    var jobRole: String
    init(firstName: String, lastName: String, emailId: String, phoneNumber: Int, address: String, employeeId: Int, jobRole: String){
        self.employeeId = employeeId
        self.jobRole = jobRole
        super.init(firstName: firstName, lastName: lastName, emailId: emailId, phoneNumber: phoneNumber, address: address)
    }
}

*/

 class ZohoContact: ContactContract{
     var contactId: Int
     
     var firstName: String
     
     var lastName: String
     
     var emailId: String
     
     var phoneNumber: Int
     
     var address: String
     
     var employeeId: Int
     var jobRole: String
     init(contactId: Int, firstName: String, lastName: String, emailId: String, phoneNumber: Int, address: String, employeeId: Int, jobRole: String){
         self.contactId = contactId
         self.firstName = firstName
         self.lastName = lastName
         self.employeeId = employeeId
         self.jobRole = jobRole
         self.emailId = emailId
         self.phoneNumber = phoneNumber
         self.address = address
         //super.init(firstName: firstName, lastName: lastName, emailId: emailId, phoneNumber: phoneNumber, address: address)
     }
     
     func displayNames(){
//         for details in 0..<DisplayMenu.zohoContactDetails.count{
//             print("lastName:   \(DisplayMenu.zohoContactDetails[details].lastName)")
//             print("firstName:   \(DisplayMenu.zohoContactDetails[details].firstName)")
//         }
         
//         for details in 0..<DataStorage.dataStorage.getContact().count{
//             if let detail = DataStorage.dataStorage.getContact()[details] as? ZohoContact{
//                 print("lastName:   \(detail.lastName)")
//                 print("firstName:   \(detail.firstName)")
//             }
//         }
         print("                         ")
         print("contactID:   \(contactId)")
         print("lastName:   \(lastName)")
         print("firstName:   \(firstName)")
     }
 }

 
