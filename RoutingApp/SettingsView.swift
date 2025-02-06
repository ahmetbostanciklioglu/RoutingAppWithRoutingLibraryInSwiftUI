import SwiftUI
import Routing

struct SettingsView: View {
    
    @EnvironmentObject var router: Router<NavigationGraph>
    var body: some View {
        VStack(spacing: 24) {
            Text("Settings View")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            
            Button("Go to Settings View") {
                router.navigateBack(1)
            }
            .font(.title2)
            .fontWeight(.semibold)
            .buttonStyle(.borderedProminent)
            .tint(Color(.systemGray4))
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .controlSize(.large)
            
        }
    }
}
