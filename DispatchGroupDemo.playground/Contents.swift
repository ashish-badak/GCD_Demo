import Foundation

let gopal = Traveller(name: "Gopal", travellingTo: .tokyo)
let madhav = Traveller(name: "Madhav", travellingTo: .newYork)
let laxman = Traveller(name: "Laxman", travellingTo: .london)
let lucky = Traveller(name: "Lucky", travellingTo: .capeTown)


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
