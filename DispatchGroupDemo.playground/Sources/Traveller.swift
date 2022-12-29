import Foundation

public class Traveller {
    private let name: String
    private let trip: Trip
    
    private let queue = DispatchQueue(
        label: "com.DispatchGroup.example",
        attributes: .concurrent
    )
    
    public init(name: String, travellingTo city: City) {
        self.name = name
        self.trip = Trip(destination: city)
    }
    
    public func startTrip(completion: @escaping () -> Void) {
        print("\(name) has started trip from \(trip.startingPoint.name)")

        queue.asyncAfter(deadline: .now() + trip.travellingTime) { [unowned self] in
            print("\(name) has reached \(trip.destination.name) successfully")
            completion()
        }
    }
}
