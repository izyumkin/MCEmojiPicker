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
    @State private var displayCategories = true
    @State private var onlyShowNewEmojisForVersion = true

    var body: some View {
        VStack {
            HStack {
                Slider(value: $maxCurrentAvailableOsVersion, in: 10...18, step: 0.1)
                Text(
                    maxCurrentAvailableOsVersion,
                    format: .number.precision(.fractionLength(1))
                )
            }
            .padding(.horizontal)

            HStack(spacing: 20) {
                Group {
                    Toggle("Count", isOn: $displayCountOfEmojisInHeader)
                    Toggle("New", isOn: $onlyShowNewEmojisForVersion)
                    Toggle("Cats", isOn: $displayCategories)
                }
                .toggleStyle(.button)
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
                if #available(iOS 16.0, *) {
                    ShareLink("", item: selectedEmoji)
                } // TODO: Find an iOS 15 way...
            }
            .padding(.horizontal)
            MCEmojiPickerRepresentableController(
                selectedEmoji: $selectedEmoji,
                maxCurrentAvailableOsVersion: maxCurrentAvailableOsVersion,
                displayCountOfEmojisInHeader: displayCountOfEmojisInHeader,
                displaysCategories: displayCategories,
                onlyShowNewEmojisForVersion: onlyShowNewEmojisForVersion,
                nextKeyboard: {
                    print("NEXT KEYBOARD")
                },
                deleteBackward: {
                    selectedEmoji.removeLast()
                }
            )
            .id(displayCountOfEmojisInHeader)
            .id(displayCategories)
            .id(onlyShowNewEmojisForVersion)
            .id(maxCurrentAvailableOsVersion)
        }
//        .background(.secondary.opacity(0.2))
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    ContentView()
}
