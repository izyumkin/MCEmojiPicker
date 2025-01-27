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
    @State private var maxCurrentAvailableOsVersion: Float = 17
    @State private var displayCountOfEmojisInHeader = true
    @State private var onlyShowNewEmojisForVersion = true

    var body: some View {
        NavigationStack {
            VStack {
                Slider(value: $maxCurrentAvailableOsVersion, in: 10...18, step: 1)
                    .padding(.horizontal)
                HStack(spacing: 40) {
                    Toggle("Count", isOn: $displayCountOfEmojisInHeader)
                    Toggle("Only new", isOn: $onlyShowNewEmojisForVersion)
                }
                .padding(.horizontal)
                HStack {
                    Button(selectedEmoji) {
                        isPresented.toggle()
                    }.emojiPicker(
                        isPresented: $isPresented,
                        selectedEmoji: $selectedEmoji,
                        isDismissAfterChoosing: false,
                        maxCurrentAvailableOsVersion: maxCurrentAvailableOsVersion,
                        displayCountOfEmojisInHeader: displayCountOfEmojisInHeader,
                        onlyShowNewEmojisForVersion: onlyShowNewEmojisForVersion
                    )
                    .padding(5)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    ShareLink("", item: selectedEmoji)
                }
                .font(.system(size: 65))
                MCEmojiPickerRepresentableController(
                    presentationMode: .constant(.view),
                    selectedEmoji: $selectedEmoji,
                    maxCurrentAvailableOsVersion: maxCurrentAvailableOsVersion,
                    displayCountOfEmojisInHeader: displayCountOfEmojisInHeader,
                    onlyShowNewEmojisForVersion: onlyShowNewEmojisForVersion
                )
                Spacer()
            }
            .background(.secondary.opacity(0.2))
            .navigationTitle("Showing Emojis for iOS \(Int(maxCurrentAvailableOsVersion))")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
