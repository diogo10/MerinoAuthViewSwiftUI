import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""

    var delegate: MerinoAuthViewDelegate

    init(delegate: MerinoAuthViewDelegate) {
        self.delegate = delegate
    }

    public var body: some View {
        VStack() {

            Text("Create account").bold().foregroundColor(.white)
                .padding(.top, 100).padding(.bottom, 20)

            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email).modifier(MerinoField())
                SecureField("Password", text: self.$password).modifier(MerinoSecureField())
            }.padding([.leading, .trailing], 27.5)

            Button(action: {
                delegate.onAccountCreated()
            }) {
                Text("Submit").modifier(TextOnButton())
            }.padding(.top, 50)

            Spacer()
            
        }.modifier(MerinoAuthBackground())
    }
}
