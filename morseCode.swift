var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]
var morseText: String = ""

for element in englishText {
  if let morseChar = letterToMorse["\(element)"] {
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}
//print(morseText)

var decodedMessage: String = ""
var morseCodeArray: [String] = []
var currMorse: String = ""

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
      case "":
      currMorse.append(" ")
      case " ":
      morseCodeArray.append(" ")
      currMorse = ""
      default:
      morseCodeArray.append(currMorse)
      currMorse = ""
    }
  }
}
morseCodeArray.append(currMorse)

print(morseCodeArray)

var morseToLetter: [String: String] = [:]

for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}
//print(morseToLetter)

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage.append(letterChar)
  } else {
    decodedMessage += " "
  }
}
print(decodedMessage)
