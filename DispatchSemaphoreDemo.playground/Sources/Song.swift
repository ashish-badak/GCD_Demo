import Foundation

public enum Song: CaseIterable {
    case jaiHo
    case gangnamStyle
    case wakaWaka
    case myHeartGoesOn
    case timeInABottle
    case billieJean
    case shapeOfYou
    case loveStory
    case inDaClub
    case naachoNaacho
    
    public var name: String {
        switch self {
        case .jaiHo:         return "Jai Ho 🇮🇳"
        case .gangnamStyle:  return "Gangnam Style 🔊"
        case .wakaWaka:      return "Waka Waka ⚽️"
        case .myHeartGoesOn: return "My Heart Goes On 🚢"
        case .timeInABottle: return "Time In A Bottle 🎸"
        case .billieJean:    return "Dangerous 🌝🚶🏽‍♂️"
        case .shapeOfYou:    return "Shape Of You 🥁"
        case .loveStory:     return "Love Story ❤️"
        case .inDaClub:      return "In Da Club 🥁"
        case .naachoNaacho:  return "Naacho Naacho 🕺🏽"
        }
    }
}
