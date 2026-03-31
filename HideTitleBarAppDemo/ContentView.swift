import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            if #available(macOS 12.0, *) {
                Color.clear
                    .background(.ultraThinMaterial)
                    .ignoresSafeArea()
            } else {
                Color(NSColor.windowBackgroundColor)
                    .ignoresSafeArea()
            }
            HStack(spacing: 0) {
                VStack {
                    Text("LEFT")
                }
                .frame(width: 200)
                .frame(maxHeight: .infinity)
                .background(Color.blue.opacity(0.78))
                .ignoresSafeArea()
                
                VStack {
                    Text("Right")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    ContentView()
}
