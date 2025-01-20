import SwiftUI
import MCEmojiPicker

@main
struct MCEmojiPicker: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var isPresented = false
    @State private var selectedEmoji = "🙋🏻‍♂️"

    var body: some View {
        VStack {
            Button(selectedEmoji) {
                isPresented.toggle()
            }.emojiPicker(
                isPresented: $isPresented,
                selectedEmoji: $selectedEmoji
            )
            .padding(5)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(10)
            .font(.system(size: 65))
            Spacer()
        }
        .padding(30)
    }
}

#Preview {
    ContentView()
}
