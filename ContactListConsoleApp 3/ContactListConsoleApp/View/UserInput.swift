//
//  UserInput.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
class UserInput {
    static func getChoice() -> Int {
        print("Enter choice")
        if let choice = Int(readLine()!){
            if InputValidation.checkChoice(choice: choice){
                return choice
            }
        }
        print("Enter the valid choice from 1 to 6")
        return getChoice()
    }
    static func getChoiceForEdit() -> Int {
        print("Enter choice for edit")
        if let choice = Int(readLine()!){
            if InputValidation.checkChoiceForEdit(choice: choice){
                return choice
            }
        }
        print("Enter the valid choice from 1 to 5")
        return getChoiceForEdit()
    }
    
    static func getFirstName()-> String {
        print("Enter the first name")
        if let name = readLine() {
            if InputValidation.checkStringValue(stringValue: name) {
                do{
                    try InputValidation.checkFirstNameIsAlreadyExists(FirstName: name)
                    return name
                }
                catch InputValidationError.firstNameIsAlreadyExists{
                    print("FirstName is already exists")
                }
                catch{
                    print("Error")
                }
            }
        }
        print("Enter a valid first name")
        return getFirstName()
    }
    static func getLastName()-> String {
        print("Enter the last name")
        if let name = readLine() {
            if InputValidation.checkStringValue(stringValue: name) {
                return name
            }
        }
        print("Enter a valid last name")
        return getLastName()
    }
    static func getEmail() -> String {
       print("Enter the emailId")
       if let emailId = readLine() {
           if InputValidation.checkEmailId(emailId: emailId){
               return emailId
           }
       }
       print("Enter a valid emailId")
       return getEmail()
    }
    
    static func getPhoneNumber() -> Int {
        print("Enter the mobile number with 10 digit")
        if let phoneNumber = Int(readLine()!){
            if InputValidation.checkPhoneNumber(phoneNumber: phoneNumber){
                do{
                    try InputValidation.checkPhoneNumberIsAlreadyExists(phoneNumber: phoneNumber)
                    return phoneNumber
                }
                catch InputValidationError.phoneNumberIsAlreadyExists{
                    print("PhoneNumber is already exists")
                }
                catch{
                    print("Error")
                }
            }
        }
        print("Enter a valid mobile number")
        return getPhoneNumber()
    }
    
    static func getPhoneNumberForEdit(firstName: String) -> Int {
        print("Enter the mobile number with 10 digit")
        if let phoneNumber = Int(readLine()!){
            if InputValidation.checkPhoneNumber(phoneNumber: phoneNumber){
                if InputValidation.checkPhoneNumberWithFirstName(phoneNumber: phoneNumber, firstName: firstName){
                    return phoneNumber
                }
            }
        }
        print("Enter a valid mobile number")
        return getPhoneNumberForEdit(firstName: firstName)
    }
    
    static func getAddress() -> String {
        print("Enter the address")
        if let address = readLine() {
            if InputValidation.checkStringValue(stringValue: address) {
                return address
            }
        }
        print("Enter a valid address")
        return getAddress()
    }
    static func getNameForEdit()-> String?{
        print("Enter the first name for edit")
        if let name = readLine() {
            if InputValidation.checkStringValue(stringValue: name) {
                if InputValidation.checkFirstNameIsExists(firstName: name){
                    return name
                }
            }
        }
        return nil
    }
    
    static func getFirstNameForDeleteAndSearch()-> String {
        print("Enter the first name")
        if let name = readLine() {
            if InputValidation.checkStringValue(stringValue: name) {
                return name
            }
        }
        print("Enter a valid first name")
        return getFirstNameForDeleteAndSearch()
    }
}
    
extension UserInput{
    static func getChoiceForContact() -> Int {
        print("Enter choice")
        if let choice = Int(readLine()!){
            if InputValidation.checkChoiceForContact(choice: choice){
                return choice
            }
        }
        print("Enter the valid choice from 1 to 2")
        return getChoiceForContact()
    }
    static func getContinueOptionValue()-> Int{
        print("Enter continue option value")
        if let continueOptionValue = Int(readLine()!){
            return continueOptionValue
        }
        return  0
    }
    
    static func getEmployeeId() -> Int {
        print("Enter the employeeId")
        if let employeeId = Int(readLine()!){
            if InputValidation.checkEmployeeId(employeeId: employeeId){
                do{
                    try InputValidation.checkEmployeeIdIsAlreadyExists(employeeId: employeeId)
                    return employeeId
                }
                catch InputValidationError.employeeIdIsAlreadyExists{
                    print("EmployeeId is already exists")
                }
                catch{
                    print("Error")
                }
            }
        }
        print("Enter a valid employeeId")
        return getEmployeeId()
    }
    
    static func getJobRole() -> String {
        print("Enter the job role")
        if let jobRole = readLine() {
            if InputValidation.checkStringValue(stringValue: jobRole) {
                return jobRole
            }
        }
        print("Enter a valid job role")
        return getJobRole()
    }
    static func getChoiceForZohoContactEdit() -> Int {
        print("Enter choice for edit")
        if let choice = Int(readLine()!){
            if InputValidation.checkChoiceForZohoContactEdit(choice: choice){
                return choice
            }
        }
        print("Enter the valid choice from 1 to 5")
        return getChoiceForZohoContactEdit()
    }
    
    static func getEmployeeIdForZohoContactEdit(firstName: String) -> Int {
        print("Enter the employeeId")
        if let employeeId = Int(readLine()!){
            if InputValidation.checkEmployeeId(employeeId: employeeId){
                if InputValidation.checkEmployeeIdWithFirstName(employeeId: employeeId, firstName: firstName){
                    return employeeId
                }
            }
        }
        print("Enter a valid employeeId")
        return getPhoneNumberForEdit(firstName: firstName)
    }

       
}
