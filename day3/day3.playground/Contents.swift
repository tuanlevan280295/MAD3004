//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var namesOfintegers = [Int:String]() //namsofIntegers is an empty [Int:string] dictionary
namesOfintegers [16] = "sixteen" //namesofIntegers now contains 1 key-value pair
print("namesOfIntegers : \(namesOfintegers)")
namesOfintegers[28] = "twenty eight"
print("dictionary contains \(namesOfintegers.count) elements")
print("dictionary : ", namesOfintegers)

if namesOfintegers.isEmpty {
    print(" dictionary is empty ")
}
else{
    
    print(namesOfintegers)
}

var airports: [String:String] = ["yyz": "Toronto pearson", "Dub": "Dublin"]
print("airports : \(airports)")
print("the airports dictionary contains \(airports.count) item.") //prints "the airports dictionary contains 2 items."
airports["LHR"] = "London Heathrow" // the value for "LHR" has been changed to "London Heathrow"
airports["YYZ"] = "TP International"
airports["ADM"] = "SVP international"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

print("The old value for DUB was \(String(describing: oldValue)).")
// Prints " the old value for DUB was Dublin."
if let airportName = airports["ADM"] {
    print("The name of the airport is \(airportName).")
}
else{
    print("That airport is not in the airports dictionary.")
}
airports["Mars"] = "Range Rover" // "Apple International" is not the real airport for APL,so delete it
print(airports)
airports["Mars"] = nil // APL has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
}
else{
    print("The airports dictionary does not contain a value for DUB.")
    // Prints "The removed airport's name is Dublin Airport."\\
}
    for(airportCode,airportName) in airports {
        print(airportCode, airportName)
    }
    for airportCode in airports.keys {
    print("Airport code: \(airportCode).")
}

    for airportName in airports.values{
    print("Airport name: \(airportName)")
    }
    let airportCode = [String](airports.keys) // airportNames is ["Toronto Pearson", "London heathrow"]
    print("airportNames :\(airportCode)")

//<KEY,VALUE> PARIS
    var d1 : Dictionary<String,String> = ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])
d1["china"] = "Mandarin"
    for (k,v) in d1 {
    print("\(k) --> \(v)")
    }
//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstName"]="JK" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3",d3)

//Getting as a key,Value pair
for (k,v) in d3 {
    print("\(k) --> \(v)")
}
//Declaring tuples
var x = (10,20, "Patel")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not found")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("statusCode:", statusCode)
print("statusMessage:", statusMessage)

let (codeOnly, _) = http404Error
print("codeOnly:",codeOnly)
let errorDescription = (Code: 404, Message: "Not found")
print(errorDescription.Code,errorDescription.Message)
//simple declaration
func add()
{
    print("I am in User Defeind Function")
}

add()
func add(n1:Int,n2:Int){
    var sum : Int
    sum = n1 + n2
    print("sum : ",sum)
}
add(n1:10,n2:20)
//add(20.10) //Error
//add(n2:30,40)
//Single Parameter

func welcome(name:String)
{
    print("Hello,\(name)")
}
welcome(name:"JK Patel")

//Making parameter label optional using _

func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("sub : \(c)")
}
sub(a: 30, 20)
//single return type
func mul(a: Int,b: Int) -> Int
{
    let c = a * b
    return c
}
var c = mul(a: 5, b: 2)
print("Mul : \(c)")

//Multi return values and define new label name

func swipe(number1 a: Int, b: Int) -> ( Int, Int)
{
    //function parameters are constants by default
    // var temp = a
    //a = b
    //b = temp
return (b,a)
}
var (a,b) = swipe(number1: 10, b: 20)
print("a: \(a), b: \(b)")
(_,c) = swipe(number1: 10, b: 20)
print("c: \(c)")

//inout concept

func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}

 var d = 8.0, y = 9.0 //not use X because its system's values
swipe(aa:&d, bb:&y)
//swipe(aa: &10, bb: &12.4)
print("x: \(d), y: \(y)")

//default Parameter

func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}
print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

//passing array as parameter
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}
display(n: 1,2,3,4,5)
display(n: 10,20,30)
//passing array as parameter
func display(numberValues:Int, parameters:[Int]...)
{
    print("Number of Values \(numberValues)")
    for i in parameters{
    print("i: \(i)")
}
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)
//sum of
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)
//find factorial using func


