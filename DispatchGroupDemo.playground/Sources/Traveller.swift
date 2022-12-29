import Foundation

public class Traveller {
    private let name: String
    private let travelDirection: Direction
    
    private let queue = DispatchQueue(
        label: "com.DispatchGroup.example",
        attributes: .concurrent
    )
    
    public init(name: String, headedIn direction: Direction) {
        self.name = name
        self.travelDirection = direction
    }
    
    public func startTrip(completion: @escaping () -> Void) {
        print("\(name) has started trip from \(travelDirection.startingPoint)")

        queue.asyncAfter(deadline: .now() + Double.random(in: 1...5)) { [unowned self] in
            print("\(name) has reached \(travelDirection.destination) successfully")
            completion()
        }
    }
}
