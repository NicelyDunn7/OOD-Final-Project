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
  * __How is it used?__ Example in Swift Playground.

## Inheritance / extension
  * Swift allows for both inheritance and extensions. Inheritance allows a class to inherit the methods, properties, and other characteristics of a different class. Extensions allow developers to add functionality to a class, protocol, structure, or enumeration in Swift. Examples in Swift Playground.

## Reflection
  * __What reflection abilities are supported?__ Reflection can be used in Swift using the Mirror API to gain read-only access to objects.
  * __How is reflection used?__ Example in Swift Playground.

## Memory management
  * __How is it handled?__ ARC (Automatic Reference Counting) as well as other features.
  * __How does it work?__ In addition to ARC, which works by clearing something from memory when the count of variables that reference that location in memory falls to 0, Swift ensures that variables are initialized before they are used, memory isn’t accessible after it’s been deallocated, and array access is checked for out-of-bounds errors.
  * __Garbage collection?__ No.
  * __Automatic reference counting?__ Yes.

## Comparisons of references and values
  * __How are values compared? (i.e. comparing two strings)__ Developers can use == to compare values and === to compare references. Example in Swift Playground.

## Null/nil references
  * __Which does the language use? (null/nil/etc)__ nil.
  * __Does the language have features for handling null/nil references?__ Optionals. Example in Swift Playground.

## Errors and exception handling
  * Enumerate Errors, Do/Catch Blocks, throws statement, try?/try!/try to gauge if a value is nil. Example in Swift Playground.

## Lambda expressions, closures, or functions as types
  * Closures are available in Swift in predefined methods such as sorted(by: ), which takes an array and a sort order and returns a new sorted array, as well as developer-designed closures. Example in Swift Playground.

## Implementation of listeners and event handlers
  * Swift allows developers to use responder objects with the UIResponder class. Developers are required to specify a first responder, which is the initial responder designated to handle an event. From there, developers can create a responder chain to handle events.

## Singleton
  * __How is a singleton implemented?__ Example in Swift Playground.
  * __Can it be made thread-safe?__ Yes, it can be made thread-safe.
  * __Can the singleton instance be lazily instantiated?__ One approach to singletons is to have them be a global, lazily instantiated object; however, this is not the recommended approach (the provided code example is).

## Procedural programming
  * __Does the language support procedural programming?__ Yes, variables and functions can be defined outside of classes. Example in Swift Playground.

## Functional programming
  * __Does the language support functional programming?__ Yes, functions can be passed as variables. Example in Swift Playground.

## Multithreading
  * __Threads or thread-like abilities?__ Yes.
  * __How is multitasking accomplished?__ Extending the Thread class to create threads and, optionally, the Grand Central Dispatch for managing thread queues. Example in Swift Playground.
