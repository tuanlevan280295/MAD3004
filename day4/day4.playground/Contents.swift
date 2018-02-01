//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//sorted closure
var months = [4,3,1,6,5,2]
print(months.sorted())

 func reverse(_ s1: Int, _ s2: Int) -> Bool {
    return s1 > s2
}
var reversendMonths = months.sorted(by: reverse)
print("reversedMonth",reversendMonths)

func increasing(_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
    
}
var increasingMonths = months.sorted(by: increasing)
print("increasing months: ", increasingMonths)


var reverseClosure = months.sorted(by: {
    (s1: Int, s2: Int) -> Bool in
    return s1 > s2
})

print("reverseClosure",reverseClosure)
 

//inferrung parameter types from context
var inferTypes = months.sorted(by: {
    (s1: Int, s2: Int) -> Bool in
    return s1 > s2
})
//print("reverseClosure: ", reverseClosure)
//inferrinh parameter types from context
var infertypes = months.sorted(by: {
//(s1,s2) in return s1 < s2
    (s1, s2) in s1 < s2 //implicit return
})
print("inferTypes : ", inferTypes)
//Shorthand argument names
print("Shorthand argument :" , months.sorted(by: {$0 < $1}))
//operator methods
print("operator methods: ",months.sorted(by: <))

var three = [1,3,4,5,6,8,9,12,15]
print("three:", three)
var moThree = three.filter({$0 % 3 == 0})
print("modThree: ",moThree)
//nested functions closure
func makeIncrementer(forIncrement amount: Int) ->() -> Int{
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
    }
let incrementByTen = makeIncrementer(forIncrement:10)

print("first call: ",incrementByTen())  //10
print("second call: ",incrementByTen())  //20
print("third call: ",incrementByTen()) //30

let incrementBySeven = makeIncrementer(forIncrement:7)

print("Increment by seven1: ",incrementBySeven())
print("Increment by seven2: ",incrementBySeven())

print("fourth call :",incrementByTen())

//Autoclosures
var errorList = [404,414,402,431,455,440]
print("total Errors:",errorList.count)

let debugger = {errorList.remove(at:0)}
print("total errors:",errorList.count)

//classes and structures in swift

//declearing in structure
struct project{
    var title = ""
    var hours = 0
    func display(){
        print("project Title: ",title)
        print("total work hours required :",hours)
    }
}
//declearing instance of structure
var LMSProject = project(title: "Moodle", hours :200)
print(LMSProject)
LMSProject.display()

LMSProject.hours = 300
LMSProject.display()

//class declaration

class Manager{
    var name : String = ""
    var productOwner : Bool = true
    var currentProject = project()
    
}
//creating instance of class
let mgrCanada = Manager()
mgrCanada.name = "JK"
mgrCanada.productOwner = true
mgrCanada.currentProject = project(title: "Sales Reporting ",
hours: 20)

print("mgrCanada Name:",mgrCanada.name)
print("mgrCanada product Owner:", mgrCanada.productOwner)
print("mgrCanada current project title:",mgrCanada.currentProject.title)
print("mgrCanada current project Hours:",mgrCanada.currentProject.hours)
//structure are VALUE TYPES
struct address{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}
var lambton = address();
print("Lambton:",lambton)

var cestar = lambton
//let cestar = lambton //raise erre when change the parameter
print("Cestar:",cestar)
cestar.street = "271 yorkland blvd"
cestar.postalCode = "M1H1Y1"
print("Cestar:",cestar)
print("Lambton: ",lambton)//classes are DEFERENCES TYPES
class Instritute{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}
var myLambton = Instritute()
print("myLambton street:",myLambton.street)
print("myLambton city:",myLambton.city)
print("myLambton postalCode:",myLambton.postalCode)

var myCestar = Instritute()
myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = "M3H3yY3"
print("myCestar street:",myCestar.street)
print("myCestar postalcode:", myCestar.postalCode)

print("myLambton street:",myLambton.street)
print("myLambton postalCode:",myLambton.postalCode)



//indentical === 


