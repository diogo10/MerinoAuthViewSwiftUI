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
        //to be implemented
    }

    func onSignIn() {
        //to be implemented
    }

    func onAccountCreated() {
        //to be implemented
    }

    var body: some View {
        SignInView(delegate: self)
    }
}
