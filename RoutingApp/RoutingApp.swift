import SwiftUI
import Routing

@main
struct RoutingApp: App {
    
    @StateObject var router: Router<NavigationGraph> = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
