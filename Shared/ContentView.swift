import SwiftUI
import AuthViewMerino

struct ContentView: View,MerinoAuthViewDelegate {

    func onAccountCreated() {
        //to code
    }

    func onSignUp() {
        //to code
    }

    func onSignIn() {
        //to code
    }

    var body: some View {
        SignInView(delegate: self)
    }
}
