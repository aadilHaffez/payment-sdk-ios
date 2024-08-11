//
//  AaniIDType.swift
//  NISdk
//
//  Created by Gautam Chibde on 02/08/24.
//

import Foundation
import SwiftUI

enum AaniIDType: String, CaseIterable, Identifiable, Equatable {
    case mobileNumber = "Mobile Number"
    case emiratesID = "Emirates ID"
    case passportID = "Passport ID"
    case emailID = "Email ID"
    
    var id: String { self.rawValue }
    
    var regex: String {
        switch self {
        case .mobileNumber: return "^[0-9]{10}$"
        case .emiratesID: return "^784-[0-9]{4}-[0-9]{7}-[0-9]$"
        case .passportID: return "^[0-9CFGHJKLMNPRTVWXYZ]{9}$"
        case .emailID: return "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        }
    }
    
    var sample: String {
        switch self {
        case .mobileNumber: return "8888888888"
        case .emiratesID: return "784-XXX-XXXXXXX-X"
        case .passportID: return "X8XXXXX88"
        case .emailID: return "example@example.com"
        }
    }
    
    var maxLength: Int {
        switch self {
        case .mobileNumber: return 10
        case .emiratesID: return 15
        case .passportID: return 9
        case .emailID: return Int.max
        }
    }
    
    var key: String {
        switch self {
        case .mobileNumber: return "MOBILE_NUMBER"
        case .emiratesID: return "EMIRATES_ID"
        case .passportID: return "PASSPORT_ID"
        case .emailID: return "EMAIL"
        }
    }
    
    func isValid(text: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: text)
    }
}
