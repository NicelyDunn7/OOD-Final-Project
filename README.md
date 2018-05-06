# Object Oriented Language Comparison
#### Team Members: Daniel Dunn & Anjay Patel
#### Languages: Swift & Kotlin

*	Language purpose/genesis
    + Why was the language created? To replace Objective-C with a more modern language that is safe, fast, and expressive.
    +	What problems was the language trying to address? Replace Objective-C, a dated, unwieldy language, with a clean, modern language while still maintaining compatibility with the existing code base written in Objective-C.
    + Is the language a reaction to a previous language or a replacement for another language? Swift is a replacement for Objective-C on Apple devices. 
*	Unique features of the language
    +	Does the language have any particularly unique features? Swift is generally a combination of many great existing language features in one package; with that being said, it does support optionals; it also has structs that support methods, extensions, and protocols.
*	Name spaces
    +	How are name spaces implemented? Name spaces are not implemented in Swift.
    +	How are name spaces used? They are not. However, there are certain workarounds, such as using enums, structs, etc.
*	Types
    +	What types does the language support? Int/UInt, Float, Double, Bool, String, Character, Optional/Nil, and Tuple. Example in Swift Playground
    +	Are both reference and value types supported? Yes, classes are reference-based while structs, enums, tuples and more are value based. Example in Swift Playground.
    +	Can new value types be created? Yes, using structs, enums, tuples, arrays, strings, or dictionaries. Example in Swift Playground.
*	Classes
    +	Defined in Swift Playground
    +	Creating new instances defined in Swift Playground
    +	Constructing/initializing defined in Swift Playground
    +	Destructing/de-initializing defined in Swift Playrground
*	Instance reference name in data type (class)
    +	this? self? self. Example in Swift Playground.
*	Properties
    +	Getters and setters…write your own or built in? Provided by Swift for computed properties. Example in Swift Playground.
    +	Backing variables? Allowed for in Swift. Example in Swift Playground.
    +	Computed properties? Allowed for in Swift. Example in Swift Playground.
*	Interfaces / protocols
    +	What does the language support? Swift supports the use of protocols.
    +	What abilities does it have? As usual, protocols allow a developer to specify required class type or instance type properties that will need to be implemented in something that implements a protocol. It also specifies a type or instance property rather than specifying if it is a stored or computed value. Lastly, it can be used to specify if the value is ‘settable’ or ‘gettable.’
    +	How is it used? Example in Swift Playground.
*	Inheritance / extension
    +	Swift allows for both inheritance and extensions. Inheritance allows a class to inherit the methods, properties, and other characteristics of a different class. Extensions allow developers to add functionality to a class, protocol, structure, or enumeration in Swift. Examples in Swift Playground.
*	Reflection
    +	What reflection abilities are supported? Reflection can be used in Swift using the Mirror API to gain read-only access to objects.
    +	How is reflection used? Example in Swift Playground.
*	Memory management
    +	How is it handled? ARC (Automatic Reference Counting) as well as other features.
    +	How does it work? In addition to ARC, which works by clearing something from memory when the count of variables that reference that location in memory falls to 0, Swift ensures that variables are initialized before they are used, memory isn’t accessible after it’s been deallocated, and array access is checked for out-of-bounds errors.
    +	Garbage collection? No.
    +	Automatic reference counting? Yes.
*	Comparisons of references and values
    +	How are values compared? (i.e. comparing two strings) Developers can use == to compare values and === to compare references. Example in Swift Playground.
*	Null/nil references
    +	Which does the language use? (null/nil/etc) nil.
    +	Does the language have features for handling null/nil references? Optionals. Example in Swift Playground.
*	Errors and exception handling
    +	Enumerate Errors, Do/Catch Blocks, throws statement, try?/try!/try to gauge if a value is nil. Example in Swift Playground.
*	Lambda expressions, closures, or functions as types
    +	Closures are available in Swift in predefined methods such as sorted(by: ), which takes an array and a sort order and returns a new sorted array, as well as developer-designed closures. Example in Swift Playground.
*	Implementation of listeners and event handlers
    +	Swift allows developers to use responder objects with the UIResponder class. Developers are required to specify a first responder, which is the initial responder designated to handle an event. From there, developers can create a responder chain to handle events.
*	Singleton
    +	How is a singleton implemented? Example in Swift Playground.
    +	Can it be made thread-safe? Yes, it can be made thread-safe.
    +	Can the singleton instance be lazily instantiated? One approach to singletons is to have them be a global, lazily instantiated object; however, this is not the recommended approach (the provided code example is).
*	Procedural programming
    + Does the language support procedural programming? Yes, variables and functions can be defined outside of classes. Example in Swift Playground.
*	Functional programming
    + Does the language support functional programming? Yes, functions can be passed as variables. Example in Swift Playground.
*	Multithreading
    +	Threads or thread-like abilities? Yes.
    +	How is multitasking accomplished? Extending the Thread class to create threads and, optionally, the Grand Central Dispatch for managing thread queues. Example in Swift Playground.
