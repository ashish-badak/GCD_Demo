import Foundation



class Traveller {
    private let name: String
    private let travelDirection: Direction
    
    private let queue = DispatchQueue(
        label: "com.DispatchGroup.example",
        attributes: .concurrent
    )
    
    init(name: String, headedIn direction: Direction) {
        self.name = name
        self.travelDirection = direction
    }
    
    func startTrip(completion: @escaping () -> Void) {
        print("\(name) has started trip from \(travelDirection.startingPoint)")

        queue.asyncAfter(deadline: .now() + Double.random(in: 1...5)) { [unowned self] in
            print("\(name) has reached \(travelDirection.destination) successfully")
            completion()
        }
    }
}

let gopal = Traveller(name: "Gopal", headedIn: .east)
let madhav = Traveller(name: "Madhav", headedIn: .west)
let laxman = Traveller(name: "Laxman", headedIn: .north)
let lucky = Traveller(name: "Lucky", headedIn: .south)


print("Everyone is going on a vacation ✈️")

let group = DispatchGroup()

group.enter()
gopal.startTrip {
    group.leave()
}

group.enter()
madhav.startTrip  {
    group.leave()
}

group.enter()
laxman.startTrip  {
    group.leave()
}

group.enter()
lucky.startTrip  {
    group.leave()
}


group.notify(queue: .main) {
    print("Everyone has reached to their destination 🏖️")
}
