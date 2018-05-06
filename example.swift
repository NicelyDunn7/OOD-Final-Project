import Cocoa

/*===========================================================================
Types
===========================================================================*/

// Supported types in Swift
let intConstant: Int = -10
var unsignedIntVariable: UInt = 7
let floatConstant: Float = 25.8
var doubleVariable: Double = 1000.98
let booleanConstant: Bool = true
var stringVariable: String = "Hello, World!"
let charConstant: Character = "c"
var optionalInt: Int? = nil
let tupleConstant = (1, "someString")

// Value type example
struct valueStruct { var valueInt: Int = 5 }
var one = valueStruct()
var two = one
one.valueInt = -7
print("\(one.valueInt), \(two.valueInt)")

// Reference type example
class referenceClass { var referenceInt: Int = -19 }
var a = referenceClass()
var b = a
a.referenceInt = 42
print("\(a.referenceInt), \(b.referenceInt)")

// Creating more value types
struct newStruct { var myVar: Double = 8.8 }
enum days {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}
let tupleExample = (newStruct(), days.Friday)
let arrayExample = [1,2,3,4,5]
let stringExample = "Hello, World! Again!"
let dictionaryExample:[Int:String] = [1:"One", 2:"Two", 3:"Three"]


/*===========================================================================
Classes
===========================================================================*/

// Defining a new class in Swift
class myClass {
    var one: Bool
    var two: Double
    var three: String?
    init(arg1: Bool, arg2: Double, arg3: String?) {
        one = arg1
        two = arg2
        three = arg3
    }
    init() {
        one = true
        two = 15.5
        three = nil
    }
    deinit {
        one = false
        two = 0.0
        three = nil
    }
}

// Creating new instances
let someInstance = myClass()

// Constructing/Initializing
var someOtherInstance: myClass? = myClass(arg1: true, arg2: 19.2, arg3: "Hello, World!")

// Destructing/De-initializing
someOtherInstance = nil


/*===========================================================================
Instance Reference Name in Data Type
===========================================================================*/

// Swift utilizing self for internal class reference
class selfClass {
    var one: Bool
    var two: Double
    init() {
        one = true
        two = 15.5
    }
    func updateTwo() {
        if self.one == true {
            self.one == false
        } else {
            self.one == true
        }
    }
}


/*===========================================================================
Properties
===========================================================================*/

// Getters and setters, backing variables, and computed properties
struct propertiesStruct{
    var index: UInt = 0
    var value: String = "My String"
}

class propertiesClass {
    var a: UInt = 3
    var b: String = "Hello, "
    var thing: propertiesStruct {
        get {
            let x = a + 1
            let y = b + String(x)
            return propertiesStruct(index: x, value: y)
        }
        set(newString) {
            b = "World!"
        }
    }
}


/*===========================================================================
Interfaces / Protocols
===========================================================================*/

protocol class1 {
    var name: String { get set }
    var id: Int { get }
    
    func profile() -> String
}

class class2: class1 {
    var name = "John"
    var id = 12345
    
    func profile() -> String {
        return "\(name) has the ID: \(id)"
    }
}

let person = class2()
print(person.profile())


/*===========================================================================
Inheritance / Extension
===========================================================================*/

// Inheritance
class class3: class2 {
    var grade: String = "Senior"
    
    override func profile() -> String {
        return "\(name) is a \(grade) and has the ID: \(id)"
    }
}

let student = class3()
print(student.profile())

// Extensions
extension class3 {
    func fullprofile() -> String {
        return profile() + " addendum to the string"
    }
}

print(student.fullprofile())


/*===========================================================================
Reflection
===========================================================================*/

let studentMirror = Mirror(reflecting: student)
for case let (label?, value) in studentMirror.children {
    print(label, value)
}


/*===========================================================================
Comparisons of References and Values
===========================================================================*/

// Comparison of Values (==)
let string1: String = "Hello, World!"
let string2: String = "Hello, World!"
let string3: String = string1
let string4: String = "Different String"

if string1 == string2 {
    print("string1 == string2")
} else {
    print("string1 != string2")
}

if string1 == string3 {
    print("string1 == string3")
} else {
    print("string1 != string3")
}

if string1 == string4 {
    print("string1 == string4")
} else {
    print("string1 != string4")
}

// Comparison of References (===)
let compare1 = class3()
let compare2 = class3()
let compare3 = compare1

if compare1 === compare2 {
    print("compare1 === compare2")
} else {
    print("compare1 !== compare2")
}

if compare1 === compare3 {
    print("compare1 === compare3")
} else {
    print("compare1 !== compare3")
}


/*===========================================================================
Null/Nil References
===========================================================================*/

var optionalVar: Int? = 7
optionalVar = nil


/*===========================================================================
Errors and Exception Handling
===========================================================================*/

enum DivisionError: Error {
    case DivideByZero
}

func divide(var1: Float, var2: Float) throws -> Float {
    guard var2 != 0.0 else {
        throw DivisionError.DivideByZero
    }
    
    return var1 / var2
}

do {
    try print(divide(var1: 1.0, var2: 0.0))
} catch {
    print(error)
}


/*===========================================================================
Lambda Expressions, Closures, or Functions as Types
===========================================================================*/

let unsortedArray = [3,5,1,4,2]
print(unsortedArray)

let sortedArray = unsortedArray.sorted(by: { (var1: Int, var2: Int) -> Bool in return var1 < var2 })
print(sortedArray)


/*===========================================================================
Implementation of Listeners and Event Handlers
===========================================================================*/

UIButton button = [UIButton new];
[button addTarget:self action:@selector(buttonTapped)
forControlEvents:UIControlEventTouchUpInside];


/*===========================================================================
Singleton
===========================================================================*/

class Singleton {
    static let shared = Singleton(singletonVar: 7)
    let singletonVar: Int
    
    private init(singletonVar: Int) {
        self.singletonVar = singletonVar
    }
}
print(Singleton.shared.singletonVar)


/*===========================================================================
Procedural Programming
===========================================================================*/

func procFunc(num: Int) -> Int {
    return num + 1
}
let procVar1: Int = 9
let procVar2: Int = procFunc(num: procVar1)
print(procVar2)


/*===========================================================================
Functional Programming
===========================================================================*/

let unsortedFunctionalArray = [4,8,3,7,5,1]
let sortedFunctionalArray = unsortedFunctionalArray.sorted { $1 > $0 }
print(unsortedFunctionalArray)
print(sortedFunctionalArray)


/*===========================================================================
Multithreading
===========================================================================*/

class ThreadExample: Thread {
    override func main() {
        print("Thread Started!")
    }
}

let threadExample = ThreadExample()
threadExample.start()
