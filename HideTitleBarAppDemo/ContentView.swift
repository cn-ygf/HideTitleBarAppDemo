import SwiftUI

struct ContentView: View {
    @StateObject private var app = AppManager()
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
                    Text(app.myTitle)
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
        .environmentObject(app) // 注入 ObservableObject对象
    }
}

#Preview {
    ContentView()
}
