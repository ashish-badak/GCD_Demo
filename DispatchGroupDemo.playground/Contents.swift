import Foundation

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
