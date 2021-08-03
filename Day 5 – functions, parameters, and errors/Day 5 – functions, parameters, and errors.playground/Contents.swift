import UIKit

func printHelp() {
    let message = """
welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

func square(number: Int) {
    print("\n", number * number)
}

square(number: 8)
