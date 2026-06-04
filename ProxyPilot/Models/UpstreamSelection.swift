import Foundation
import ProxyPilotCore

enum UpstreamSelection: Hashable, Identifiable {
    case builtIn(UpstreamProvider)
    case custom(UUID)

    var id: String {
        switch self {
        case .builtIn(let provider):
            return "builtin:\(provider.rawValue)"
        case .custom(let id):
            return "custom:\(id.uuidString)"
        }
    }
}
