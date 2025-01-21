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
    @State private var maxCurrentAvailableOsVersion: Float = 18
    @State private var displayCountOfEmojisInHeader = true

    var body: some View {
        NavigationStack {
            VStack {
                Slider(value: $maxCurrentAvailableOsVersion, in: 10...18, step: 1)
                Toggle("Display Count", isOn: $displayCountOfEmojisInHeader)
                Button(selectedEmoji) {
                    isPresented.toggle()
                }.emojiPicker(
                    isPresented: $isPresented,
                    selectedEmoji: $selectedEmoji,
                    isDismissAfterChoosing: false,
                    maxCurrentAvailableOsVersion: maxCurrentAvailableOsVersion,
                    displayCountOfEmojisInHeader: displayCountOfEmojisInHeader
                )
                .padding(5)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .font(.system(size: 65))
                Spacer()
            }
            .padding()
            .background(.secondary.opacity(0.2))
            .navigationTitle("Showing Emojis for iOS \(Int(maxCurrentAvailableOsVersion))")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
