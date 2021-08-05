import UIKit

let driving = {
    print("I'm driving in my car")
}

driving()

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

func travel( number:Int, action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
    print(number)
}

travel(number: 5, action: driving)

travel(number: 5) {
    print("I'm driving im my car")
}
