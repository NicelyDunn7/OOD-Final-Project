
# Kotlin

## Language purpose/genesis
  * __Why was the language created?__ The language was created by JetBrains, a for-profit company that sells IDE’s and other tools associated with developing. The motivation for the creation of Kotlin was then two part. One: create a more concise language than Java (it is 40% more concise), and two: drive developers to JetBrains products in a similar fashion as microsoft has done for .net. Since JetBrains created the language, they are in the best position to create an IDE best for it, and then hope to get the end customer in on their ecosystem
  * __What problems was the language trying to address?__ Replace Java with a more concise language, and provide more business to JetBrains
  * __Is the language a reaction to a previous language or a replacement for another language?__ It is both a reaction and replacement. It was built due to java, and provides complete interoperability with the language. It also provides several improvements, such as a roughly 40% cut in the number of lines of code, being more type-safe, smart casting, higher-order functions, and other inclusions to increase functionality.


## Unique features of the language
  * __Does the language have any particularly unique features?__ Some of the main ones: Java interoperabilty, No runtime overhead, Null safety (doesnt compile code that returns null), incredibly concise comparitavely

## Name spaces
  * __How are name spaces implemented?__ Kotlin does not have namespaces. A way to possibly work around this is to wrap things in a singleton object.

  * __How are name spaces used?__ Not at all

## Types
  * __What types does the language support?__ Unlike in Java, which has two types of type (primitive and reference), Kotlin makes no distinction and treats all types as objects. Kotlin supports Long, Int, Short, Byte, Double, Float, Boolean, Characters, and Strings

    ```
  * __Are both reference and value types supported?__ As with java, it passes a copy of the reference, since Kotlin is JVM based

  * __Can new value types be created?__ Since everything is an object in Kotlin, yes.


## Classes
  * __Defining__ Declared using the keyword “class”
    
  * __Creating new instances__ Call the constructor as if it was a regular function. I.E. val invoice = Invoice(), there is no new keyword

  * __Constructing/initializing__ Has primary constructor and one or more secondary constructors. Class Person constructor (){}, the constructor keyword for the primary constructor is only needed if ithas annotations or visibility modifiers, else it can be ommitted. Primary constructor cannot contain code, which instead is held in an initialization block init{}. Secondary constructors are prefixed with constructor, and need to delegate to a primary structure either directly or through another secondary constructor using the this keyword.

  * __Destructing/de-initializing__ No direct destroyer, since like Java Kotlin is a garbage collected language.

## Instance reference name in data type (class)
  * __this? self?__ self.
    ```
    this
    ```

## Properties
  * __Getters and setters…write your own or built in?__ They are both optional, but can create custom ones if wanted. get()=, and set()= are the syntax
  * __Backing variables?__ Fields cannot be declared directly in Kotlin classes, but Kotlin automatically provides a backing field for property that needs it.
  * __Computed properties?__ Available, a field on an object with a custom getter or setter similar to swift.
  
  ```
  val fullname: String
      get() = “$firstName $lastName”
  ```
   

## Interfaces / protocols
  * __What does the language support?__ Similar to Java, interfaces contain declarations of abstract methods and method implementations, but cannot store state. Properties need to be abstract or provide accessor implementations. Does not yet support protocols fully but has extensions.

## Inheritance / extension
  * All Kotlin classes have a common superclass Any, which is default for a class with no subtypes. Declaring an explicit supertype is done using a colon after the class header 
  ```
  class derived(p: Int) : Base(p)
  ```
  
## Reflection
  * __What reflection abilities are supported?__ Functions and properties are first class citizens, so introspecting them is closely intertwined with the simple functional style. 

  * __How is reflection used?__ Function composition, references, and introspection are all built in functionality to Kotlins reflection capabilities.


## Memory management
  * __How is it handled?__ By the java virtual machine (JVM)
  * __How does it work?__ Byte is generated and still read by JVM, all handled by that including garbage collection
  * __Garbage collection?__ Yes
  * __Automatic reference counting?__ Yes

## Comparisons of references and values
  * __How are values compared? (i.e. comparing two strings)__ There are two types of compare in Kotlin: structural equality and referential equality. Structural is composed of == and checks the values, referential is === and checks the references. This works for all value types as == is translate into .equals()

## Null/nil references
  * __Which does the language use? (null/nil/etc)__ Null. It aims to reduce nullpointerexceptions by only distinguishing references that can hold null and those that cannot for example, var a: String = “abc” cannot be set to null, but var b: String? = “abc” can. This guarantees variable a to not cause an NPE. Safe call operators are another way to reduce risk, if a property may or may not exist calling it with ? after will return a null if the property is null. Finally the not null assertion operator !! converts any value to a non null and throws an exception if the value is null. Meaning you can have an NPE but you have to ask for it explicitly.

## Errors and exception handling 
  * Exceptions in Kotlin are descendants of the class Throwable, each exception has a message, stack trace, and optional cause. Use throw to throw an exception example: throw MyException(“Hi There!”). Throw is of the type nothing, and nothing can be used to mark a function that never returns.
  * Try-catch-finally. Must have either try or catch blocks. Try is an expression and may have a return value. 


## Lambda expressions, closures, or functions as types
  * Functions are first class citizens - they can be stored in variables and data structures, passed as arguments, and returned from other functions.
  * Function types are available, as are lambda expressions. Lambda expressions are surrounded by curly braces, parameter declarations, and have optional annotations. 

## Implementation of listeners and event handlers
  * Here 1 is an anonymous class as the listener and 2 is the handler. This is common to have the same object listen and handle an event. You can define separate functions for the two as well.
    ```
    cancelImage.setOnClickListener(object : View.OnClickListener { //1
    override fun onClick(v: View?) { // 2
        dismiss()
      }
    })
    ```

## Singleton
  * __How is a singleton implemented?__ In kotlin it is done by simply declaring an object. 
  ```
  Object SomeSingleton
  ```
  * __Can it be made thread-safe?__ The object itself will be instantiated and executed lazily upon first access in a thread safe way using static initialization block which is done under the hood.

  * __Can the singleton instance be lazily instantiated?__ Yes it is done on first access natively.


## Procedural programming
  * __Does the language support procedural programming?__ Yes, you can define functions and variables without placing them explicitly in classes

## Functional programming
  * __Does the language support functional programming?__ Yes, Kotlin supports functional programming

## Multithreading
  * __Threads or thread-like abilities?__ Yes similar to Java kotlin can have threads.
  * __How is multitasking accomplished?__ Kotlin has an extension function for creating java threads using simply 
  `1
  thread(){}
  ```
