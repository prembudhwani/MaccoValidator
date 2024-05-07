//
//  Validator.swift
//  MaccoValidator
//
//  Created by Prem Budhwani on 07/05/24.
//

import Foundation

public struct Validator {
    public static func validEmail(email : String) -> Bool {
        let emailRegx = "[A-Z0-9a-z]._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegx)
        return emailPred.evaluate(with: email)
    }
    
    public static func sayHello()
    {
        print("Hi. How are you doing?....")
    }
}
