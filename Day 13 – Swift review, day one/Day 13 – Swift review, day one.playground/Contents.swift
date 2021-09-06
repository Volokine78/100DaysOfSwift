import UIKit

var name = "Tim McGraw"
name = "Romeo"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

e > 3
e >= 3
e > 4
e < 4

var name3 = "Tim McGraw"
name3 == "Tim McGraw"

var stayOutTooLate2 = true
stayOutTooLate2
!stayOutTooLate2

name3 != "Tim McGraw"

"Your name is \(name3)"
"Your name is " + name3

var age2 = 25
var latitude2 = 36.166667

"Your name is \(name3), your age is \(age2), and your latitude is \(latitude2)"
"You are \(age2) years old. In another \(age2) years you will be \(age * 2)."

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it off", "You belong with me", "Back to december", 3]
songs[0]
songs[1]
songs[2]

type(of: songs)

var songs2: [String] = []
var songs3 = [String]()
songs2.append("Shake it off")

var songs4 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs5 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs4 + songs5
both2 += ["Everything has changed."]
