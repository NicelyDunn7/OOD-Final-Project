# Object Oriented Language Comparison
#### Team Members: Daniel Dunn & Anjay Patel
#### Languages: Swift & Kotlin

# Swift

## Language purpose/genesis
  * __Why was the language created?__ To replace Objective-C with a more modern language that is safe, fast, and expressive.
  * __What problems was the language trying to address?__ Replace Objective-C, a dated, unwieldy language, with a clean, modern language while still maintaining compatibility with the existing code base written in Objective-C.
  * __Is the language a reaction to a previous language or a replacement for another language?__ Swift is a replacement for Objective-C on Apple devices. 

## Unique features of the language
  * __Does the language have any particularly unique features?__ Swift is generally a combination of many great existing language features in one package; with that being said, it does support optionals; it also has structs that support methods, extensions, and protocols.

## Name spaces
  * __How are name spaces implemented?__ Name spaces are not implemented in Swift.
  * __How are name spaces used?__ They are not. However, there are certain workarounds, such as using enums, structs, etc.

## Types
  * __What types does the language support?__ Int/UInt, Float, Double, Bool, String, Character, Optional/Nil, and Tuple.
    ```
    let intConstant: Int = -10
    var unsignedIntVariable: UInt = 7
    let floatConstant: Float = 25.8
    var doubleVariable: Double = 1000.98
    let booleanConstant: Bool = true
    var stringVariable: String = "Hello, World!"
    let charConstant: Character = "c"
    var optionalInt: Int? = nil
    let tupleConstant = (1, "someString")
    ```
  * __Are both reference and value types supported?__ Yes, classes are reference-based while structs, enums, tuples and more are value based.
    ```
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
    ```
  * __Can new value types be created?__ Yes, using structs, enums, tuples, arrays, strings, or dictionaries.
    ```
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
    ```

## Classes
   ```
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
   ```
  * __Creating new instances__
    ```
    let someInstance = myClass()
    ```
  * __Constructing/initializing__
    ```
    var someOtherInstance: myClass? = myClass(arg1: true, arg2: 19.2, arg3: "Hello, World!")
    ```
  * __Destructing/de-initializing__ Requires a deinit method to be defined inside the class.
    ```
    someOtherInstance = nil
    ```

## Instance reference name in data type (class)
  * __this? self?__ self.
    ```
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
    ```

## Properties
  * __Getters and setters…write your own or built in?__ Provided by Swift for computed properties.
  * __Backing variables?__ Allowed for in Swift.
  * __Computed properties?__ Allowed for in Swift.
    ```
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
    ```

## Interfaces / protocols
  * __What does the language support?__ Swift supports the use of protocols.
  * __What abilities does it have?__ As usual, protocols allow a developer to specify required class type or instance type properties that will need to be implemented in something that implements a protocol. It also specifies a type or instance property rather than specifying if it is a stored or computed value. Lastly, it can be used to specify if the value is ‘settable’ or ‘gettable.’
  * __How is it used?__
    ```
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
    ```

## Inheritance / extension
  * Swift allows for both inheritance and extensions. Inheritance allows a class to inherit the methods, properties, and other characteristics of a different class. Extensions allow developers to add functionality to a class, protocol, structure, or enumeration in Swift.
    ```
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
    ```

## Reflection
  * __What reflection abilities are supported?__ Reflection can be used in Swift using the Mirror API to gain read-only access to objects.
  * __How is reflection used?__ 
    ```
    let studentMirror = Mirror(reflecting: student)
    for case let (label?, value) in studentMirror.children {
        print(label, value)
    }
    ```

## Memory management
  * __How is it handled?__ ARC (Automatic Reference Counting) as well as other features.
  * __How does it work?__ In addition to ARC, which works by clearing something from memory when the count of variables that reference that location in memory falls to 0, Swift ensures that variables are initialized before they are used, memory isn’t accessible after it’s been deallocated, and array access is checked for out-of-bounds errors.
  * __Garbage collection?__ No.
  * __Automatic reference counting?__ Yes.

## Comparisons of references and values
  * __How are values compared? (i.e. comparing two strings)__ Developers can use == to compare values and === to compare references.
    ```
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
    ```

## Null/nil references
  * __Which does the language use? (null/nil/etc)__ nil.
  * __Does the language have features for handling null/nil references?__ Optionals.
    ```
    var optionalVar: Int? = 7
    optionalVar = nil
    ```

## Errors and exception handling
  * Enumerate Errors, Do/Catch Blocks, throws statement, try?/try!/try to gauge if a value is nil.
    ```
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
    ```

## Lambda expressions, closures, or functions as types
  * Closures are available in Swift in predefined methods such as sorted(by: ), which takes an array and a sort order and returns a new sorted array, as well as developer-designed closures.
    ```
    let unsortedArray = [3,5,1,4,2]
    print(unsortedArray)

    let sortedArray = unsortedArray.sorted(by: { (var1: Int, var2: Int) -> Bool in return var1 < var2 })
    print(sortedArray)
    ```

## Implementation of listeners and event handlers
  * Swift allows developers to use responder objects with the UIResponder class. Developers are required to specify a first responder, which is the initial responder designated to handle an event. From there, developers can create a responder chain to handle events.
    ```
    UIButton button = [UIButton new];
    [button addTarget:self action:@selector(buttonTapped)
    forControlEvents:UIControlEventTouchUpInside];
    ```

## Singleton
  * __How is a singleton implemented?__
    ```
    class Singleton {
        static let shared = Singleton(singletonVar: 7)
        let singletonVar: Int

        private init(singletonVar: Int) {
            self.singletonVar = singletonVar
        }
    }
print(Singleton.shared.singletonVar)
    ```
  * __Can it be made thread-safe?__ Yes, it can be made thread-safe.
  * __Can the singleton instance be lazily instantiated?__ One approach to singletons is to have them be a global, lazily instantiated object; however, this is not the recommended approach (the provided code example is).

## Procedural programming
  * __Does the language support procedural programming?__ Yes, variables and functions can be defined outside of classes.
    ```
    func procFunc(num: Int) -> Int {
        return num + 1
    }
    let procVar1: Int = 9
    let procVar2: Int = procFunc(num: procVar1)
    print(procVar2)
    ```

## Functional programming
  * __Does the language support functional programming?__ Yes, functions can be passed as variables.
    ```
    let unsortedFunctionalArray = [4,8,3,7,5,1]
    let sortedFunctionalArray = unsortedFunctionalArray.sorted { $1 > $0 }
    print(unsortedFunctionalArray)
    print(sortedFunctionalArray)
    ```

## Multithreading
  * __Threads or thread-like abilities?__ Yes.
  * __How is multitasking accomplished?__ Extending the Thread class to create threads and, optionally, the Grand Central Dispatch for managing thread queues.
    ```
    class ThreadExample: Thread {
        override func main() {
            print("Thread Started!")
        }
    }

    let threadExample = ThreadExample()
    threadExample.start()
    ```
