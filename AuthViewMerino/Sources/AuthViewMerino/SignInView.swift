import SwiftUI

public protocol MerinoAuthViewDelegate {
    func onSignUp()
    func onSignIn()
    func onAccountCreated()
}

public struct SignInView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var showingSignUp = false

    var icon: String = ""
    var delegate: MerinoAuthViewDelegate

    public init(delegate: MerinoAuthViewDelegate) {
        self.delegate = delegate
    }

    public var body: some View {
        VStack() {

            Image(icon).iconCircle()

            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email).modifier(MerinoField())
                SecureField("Password", text: self.$password).modifier(MerinoSecureField())
            }.padding([.leading, .trailing], 27.5)


            Button(action: {
                delegate.onSignIn()
            }) {
                Text("Sign In").modifier(TextOnButton())
                    .shadow(radius: 10.0, x: 20, y: 10)

            }.padding(.top, 50)

            Spacer()

            HStack(spacing: 0) {
                Text("Don't have an account? ").foregroundColor(.white)
                Button(action: {
                    delegate.onSignUp()
                    self.showingSignUp.toggle()
                }) {
                    Text("Sign Up").foregroundColor(.white)
                }.sheet(isPresented: $showingSignUp) {
                    SignUpView(delegate: delegate)
                }
            }
        }.modifier(MerinoAuthBackground())

    }
}
