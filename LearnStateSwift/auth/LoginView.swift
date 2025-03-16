//
//  LoginView.swift
//  LearnStateSwift
//
//  Created by Eslam Ghazy on 16/3/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            TextField("Email", text: Binding(
                get: { viewModel.state.email },
                set: { viewModel.onEvent(.email($0)) }
            ))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
//            SecureField("Password", text: Binding(
//                get: { viewModel.state.password },
//                set: { viewModel.onEvent(.password($0)) }
//            ))
            SecureField("Password",text: $viewModel.state.password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Toggle("Remember Me", isOn: Binding(
                get: { viewModel.state.rememberMe },
                set: { viewModel.onEvent(.rememberMe($0)) }
            ))
            .padding()
            
            Button("Login") {
                viewModel.onEvent(.login)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Button("Reset") {
                viewModel.onEvent(.reset)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            if viewModel.state.isLoading {
                ProgressView()
            }
            
            if let error = viewModel.state.error {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
