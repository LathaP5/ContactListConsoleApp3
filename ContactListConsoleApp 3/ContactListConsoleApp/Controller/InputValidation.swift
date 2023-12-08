//
//  InputValidation.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
class InputValidation{
    static func checkChoice(choice : Int) -> Bool{
        return choice >= 1 && choice <= 6
    }
    
    static func checkChoiceForEdit(choice: Int) -> Bool{
        return choice >= 1 && choice <= 5
    }
   
    static func checkStringValue(stringValue : String)-> Bool{
        if stringValue != "" {
            return true
        }
        else{
            return false
        }
    }
    static func checkEmailId(emailId : String)-> Bool{
        var emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        var emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        if emailPredicate.evaluate(with: emailId) {
            return true
        }
        else{
            return false
        }
    }
    static func checkPhoneNumber(phoneNumber : Int) -> Bool{
        var numberOfDigits: Int = 0
        var number: Int = phoneNumber
        while number > 0 {
            numberOfDigits += 1
            number = number / 10
        }
        if numberOfDigits == 10 {
            return true
        }
        else{
            return false
        }
    }
    static func checkFirstNameIsExists(firstName: String) -> Bool{
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].firstName == firstName{
                return true
            }
        }
        return false
    }
    
    static func checkFirstNameIsAlreadyExists(FirstName: String) throws {
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].firstName == FirstName{
                throw InputValidationError.firstNameIsAlreadyExists
            }
        }
    }
    
    static func checkPhoneNumberIsAlreadyExists(phoneNumber: Int) throws {
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].phoneNumber == phoneNumber{
                throw InputValidationError.phoneNumberIsAlreadyExists
            }
        }
    }
    static func checkPhoneNumberWithFirstName(phoneNumber: Int, firstName: String) -> Bool{
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].phoneNumber == phoneNumber{
                if DataStorage.dataStorage.getContact()[index].firstName == firstName{
                    return true
                }
                else{
                    return false
                }
            }
        }
        return true
    }
}

extension InputValidation{
    
    static func checkChoiceForContact(choice : Int) -> Bool{
        return choice >= 1 && choice <= 3
    }
    
    static func checkEmployeeId(employeeId : Int) -> Bool{
        var numberOfDigits: Int = 0
        var number: Int = employeeId
        while number > 0 {
            numberOfDigits += 1
            number = number / 10
        }
        if numberOfDigits == 5 {
            return true
        }
        else{
            return false
        }
    }
    static func checkEmployeeIdIsAlreadyExists(employeeId: Int) throws {
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if let zohoContact = DataStorage.dataStorage.getContact()[index] as? ZohoContact{
                if zohoContact.employeeId == employeeId{
                    throw InputValidationError.employeeIdIsAlreadyExists
                }
            }
        }
    }
    static func checkChoiceForZohoContactEdit(choice: Int)-> Bool{
            return choice >= 1 && choice <= 7
        }
    static func checkEmployeeIdWithFirstName(employeeId: Int, firstName: String) -> Bool{
        for index in 0..<DataStorage.dataStorage.getContact().count{
            if DataStorage.dataStorage.getContact()[index].employeeId == employeeId {
                if DataStorage.dataStorage.getContact()[index].firstName == firstName{
                    return true
                }
                else{
                    return false
                }
            }
        }
        return true
    }
}

