//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Ferdous Mahmud Akash on 10/17/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

struct K {
    static let appName        = "⚡️FlashChat"
    static let loginSegue     = "LoginToChat"
    static let registerSegue  = "RegisterToChat"
    static let cellIdentifier = "ReusableCell"
    
    struct BrandColors {
        static let purple      = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue        = "BrandBlue"
        static let lighBlue    = "BrandLightBlue"
    }
        
    struct FStore {
        static let collectionName = "messages"
        static let senderField    = "sender"
        static let bodyField      = "body"
        static let dateField      = "date"
    }
}
