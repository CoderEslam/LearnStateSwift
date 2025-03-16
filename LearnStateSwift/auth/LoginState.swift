//
//  LoginState.swift
//  LearnStateSwift
//
//  Created by Eslam Ghazy on 16/3/25.
//

import Foundation

struct LoginState {
    var email: String = ""
    var password: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var phone: String = ""
    var fcm: String = ""
    var rememberMe: Bool = false
    var passwordVisible: Bool = false
    var isLoading: Bool = false
    var loginSuccess: Bool = false
    var error: String? = nil
}
