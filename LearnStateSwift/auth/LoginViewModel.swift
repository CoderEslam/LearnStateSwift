//
//  LoginViewModel.swift
//  LearnStateSwift
//
//  Created by Eslam Ghazy on 16/3/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var state = LoginState()
    
    
    func onEvent(_ event: LoginEvent) {
        
        switch event {
        case .email(let email):
            state.email = email
        case .password(let password):
            state.password = password
        case .firstName(let firstName):
            state.firstName = firstName
        case .lastName(let lastName):
            state.lastName = lastName
        case .phone(let phone):
            state.phone = phone
        case .rememberMe(let rememberMe):
            state.rememberMe = rememberMe
        case .passwordVisible(let show):
            state.passwordVisible = show
        case .fcm(let fcm):
            state.fcm = fcm
        case .login:
            login()
        case .signUp:
            signUp()
        case .error(let error):
            state.error = error
        case .reset:
            state = LoginState()
        }
        
    }
    
    
    
    private func login() {
        state.isLoading = true
        // Simulate an API call delay]
        print("\(state)")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.state.isLoading = false
            self.state.loginSuccess = true
        }
    }
    
    private func signUp() {
        state.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.state.isLoading = false
            self.state.loginSuccess = true
        }
    }
    
    
}
