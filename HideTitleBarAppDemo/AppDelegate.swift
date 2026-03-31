import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    private var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        self.createMainWindow()
    }
    
    private func createMainWindow() {
        let hostingView = NSHostingView(
            rootView: ContentView()
        )

        // .fullSizeContentView是无边框窗口的关键
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 900, height: 700),
            styleMask: [.titled, .closable, .miniaturizable, .fullSizeContentView],
            backing: .buffered,
            defer: false
        )

        // 禁止改变窗口大小和隐藏最大化按钮
        // 可自己调整
        window.center()
        window.title = "HideTitleBarAppDemo"
        window.contentView = hostingView
        window.backgroundColor = .clear
        window.titlebarAppearsTransparent = true
        window.titleVisibility = .hidden
        window.standardWindowButton(.zoomButton)?.isHidden = true
        window.styleMask.remove(.resizable)
        window.isOpaque = false
        window.makeKeyAndOrderFront(nil)
    }

    func applicationShouldTerminateAfterLastWindowClosed(
        _ sender: NSApplication
    ) -> Bool {
        return true
    }
}
