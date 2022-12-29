import Foundation

public enum City {
    case mumbai
    case tokyo
    case newYork
    case london
    case capeTown
    
    var name: String {
        switch self {
        case .mumbai:   return "Mumbai 🇮🇳"
        case .tokyo:    return "Tokyo 🇯🇵"
        case .newYork:  return "New York 🇺🇸"
        case .london:   return "London 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
        case .capeTown: return "Cape Town 🇿🇦"
        }
    }
}
