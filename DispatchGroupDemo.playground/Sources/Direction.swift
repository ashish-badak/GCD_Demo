import Foundation

public enum Direction {
    case east, west, north, south
}

public extension Direction {
    var startingPoint: String {
        "Mumbai 🇮🇳"
    }
    
    var destination: String {
        switch self {
        case .east: return "Tokyo 🇯🇵"
        case .west: return "New York 🇺🇸"
        case .north: return "London 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
        case .south: return "Cape Town 🇿🇦"
        }
    }
}
