import SwiftUI
import FloatingButton

struct FloatingHeaderButtonView: View {
    let buttonTitles: [String]
    @Binding var selectedButton: String?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(buttonTitles, id: \.self) { title in
                    Button(action: {
                        selectedButton = title
                        // Handle button action here
                        print("\(title) tapped")
                    }) {
                        Text(title)
                            .foregroundColor(textColor(for: title))
                            .padding()
                            .cairoExtraBold(size: 15)
                            .background(buttonBackground(for: title))
                            .cornerRadius(.infinity)
                    }
                    .padding(.horizontal, 3)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                }
            }
            .padding()
        }
    }

    private func buttonBackground(for title: String) -> Color {
        if let selectedButton = selectedButton, selectedButton == title {
            return Color.AqarGreen
        } else {
            return Color.white
        }
    }

    private func textColor(for title: String) -> Color {
        if let selectedButton = selectedButton, selectedButton == title {
            return Color.white
        } else {
            return Color.AqarGreen
        }
    }
}
