# Object Oriented Language Comparison
#### Team Members: Daniel Dunn & Anjay Patel
#### Languages: Swift & Kotlin

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
  * __What types does the language support?__ Int/UInt, Float, Double, Bool, String, Character, Optional/Nil, and Tuple. Example in Swift Playground
  * __Are both reference and value types supported?__ Yes, classes are reference-based while structs, enums, tuples and more are value based. Example in Swift Playground.
  * __Can new value types be created?__ Yes, using structs, enums, tuples, arrays, strings, or dictionaries. Example in Swift Playground.
## Classes
  * Defined in Swift Playground
  * __Creating new instances__ defined in Swift Playground
  * __Constructing/initializing__ defined in Swift Playground
  * __Destructing/de-initializing__ defined in Swift Playrground
## Instance reference name in data type (class)
  * __this? self?__ self. Example in Swift Playground.
## Properties
  * __Getters and setters…write your own or built in?__ Provided by Swift for computed properties. Example in Swift Playground.
  * __Backing variables?__ Allowed for in Swift. Example in Swift Playground.
  * __Computed properties?__ Allowed for in Swift. Example in Swift Playground.
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
