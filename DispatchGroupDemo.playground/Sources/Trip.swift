import Foundation

public struct Trip {
    public let startingPoint: City
    public let destination: City
    
    public var travellingTime: Double {
        return Double.random(in: 2...5)
    }
    
    public init(startingPoint: City = .mumbai, destination: City) {
        self.startingPoint = startingPoint
        self.destination = destination
    }
}
