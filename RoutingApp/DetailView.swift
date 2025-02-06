import SwiftUI
import Routing


struct DetailView: View {
    
    @EnvironmentObject var router: Router<NavigationGraph>
    
    var body: some View {
        RoutingView(stack: $router.stack) {
            VStack(spacing: 24) {
                Text("Detail View")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
                
                
                Button("Go to Settings View") {
                    router.navigate(to: .settings)
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
}
