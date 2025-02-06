import Routing
import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router<NavigationGraph>
    
    var body: some View {
        DetailView()
            .environmentObject(router)
    }
}








enum NavigationGraph: Routable {
    case detail, settings
    
    var body: some View {
        switch self {
        case .detail:
            DetailView()
        case .settings:
            SettingsView()
        }
    }
}
