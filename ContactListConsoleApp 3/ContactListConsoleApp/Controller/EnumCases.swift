//
//  EnumCases.swift
//  ContactListConsoleApp
//
//  Created by latha-16226 on 09/06/23.
//

import Foundation
enum ContactListMenu: Int{
    case add = 1
    case edit
    case search
    case delete
    case list
    case exit
}

enum InputValidationError: Error{
    case firstNameIsAlreadyExists
    case phoneNumberIsAlreadyExists
    case invalidEmailId
    case employeeIdIsAlreadyExists
}
