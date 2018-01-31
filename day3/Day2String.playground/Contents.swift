//: Playground - noun: a place where people can play
/*
 Class Activity for this session:
 Display individual characters of string from first to last and in reverse also using a loop that iterates for total length number of time.
 */
import UIKit

var str = "Hello, playground"

print(str)

let strOne = """
This is first line
This is another line
This is one more line
Ok. Enough of lines
"""

print(strOne)

var mood = ""
let heart = "\u{1F496}"
mood = "happy"

if mood.isEmpty {
    print("cheer up")
}
else{
    print(heart)
}

mood += " cheerful joyful"
print(mood)

//heart += " Be happy"

var firstName = String()
firstName = "Jigisha"
print(firstName)

for i in firstName{
    print(i)
}

let initial : Character = "J"
firstName.append(initial)

print(firstName)

print("Firstname is \(firstName) which is \(firstName.count) characters long. ")

print("start Index:",firstName[firstName.startIndex])
//print("end Index:",firstName[firstName.endIndex])
print("before end Index:", firstName[firstName.index(before: firstName.endIndex)])
print("after start Index:", firstName[firstName.index(after: firstName.startIndex)])
print("5th character:", firstName[firstName.index(firstName.startIndex,offsetBy: 4)])
print("3rd from last character:", firstName[firstName.index(firstName.endIndex,offsetBy: -3)])


var idx = firstName.index(firstName.startIndex,offsetBy: 3)
print("fourth character:",firstName[idx])

var language = "Swift"
print ("language : ",language)

language.insert("!",at: language.endIndex)
print ("language : ",language)

language.insert(contentsOf:" Java", at: language.endIndex)
print ("language : ",language)

language.insert(contentsOf:" is nice than ",at: language.index(language.startIndex,offsetBy: 6))
print ("language contentsOf: ",language)

language.remove(at: language.index(before: language.endIndex))
print("language remove : ",language)

let range = language.startIndex..<language.endIndex
language.removeSubrange(range)
print("language removesubrange: ",language)

let greeting = "Happy Holidays!"
let index = greeting.index(of: " ") ?? greeting.endIndex
let start = greeting[..<index]
let newGreet = String(start)

print("sub string : ",newGreet)
print("String in uppercase : ",newGreet.uppercased())

if (newGreet == newGreet.uppercased()){
    print("Equal")
}
else{
    print("Not equal")
}

var grade : String?
//grade = "A"
let finalGrade = grade ?? "F"

if (finalGrade.isEmpty){
    print("Not graded yet")
}
else{
    print("Grade : ",finalGrade)
}
