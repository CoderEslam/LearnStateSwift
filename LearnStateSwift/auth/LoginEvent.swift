//
//  LoginEvent.swift
//  LearnStateSwift
//
//  Created by Eslam Ghazy on 16/3/25.
//

import Foundation

enum LoginEvent {
    case email(String)
    case password(String)
    case firstName(String)
    case lastName(String)
    case phone(String)
    case rememberMe(Bool)
    case passwordVisible(Bool)
    case fcm(String)
    case login
    case signUp
    case error(String?)
    case reset
}
