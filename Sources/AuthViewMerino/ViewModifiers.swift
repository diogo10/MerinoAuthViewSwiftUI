import SwiftUI

extension Color {
    static var themeTextField: Color {
        return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
    }
}

extension Image {
    func iconCircle() -> some View {
        self.resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10.0, x: 20, y: 10)
            .padding(.bottom, 50).padding(.top, 40)
   }
}

struct MerinoAuthBackground: ViewModifier {
    func body(content: Content) -> some View {
        content.background(
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all))
    }
}

struct MerinoSecureField: ViewModifier {
    func body(content: Content) -> some View {
        content.padding()
            .background(Color.themeTextField)
            .cornerRadius(16.0)
            .shadow(radius: 10.0, x: 20, y: 10)
    }
}

struct MerinoField: ViewModifier {
    func body(content: Content) -> some View {
        content.padding()
            .background(Color.themeTextField)
            .cornerRadius(16.0)
            .shadow(radius: 10.0, x: 20, y: 10)
    }
}

struct TextOnButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.green)
            .cornerRadius(15.0)
            .shadow(radius: 10.0, x: 20, y: 10)
    }
}
