//
//  ContentView.swift
//  Shared
//
//  Created by Diogo Henrique on 24/01/2021.
//

import SwiftUI
import AuthViewMerino

struct ContentView: View, MerinoAuthViewDelegate {
    func onSignUp() {

    }

    func onSignIn() {

    }

    func onAccountCreated() {
        
    }

    var body: some View {
        SignInView(delegate: self)
    }
}
