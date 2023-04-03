/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Introduction to function closure parameters
 Using Closures in a function
*/
import Foundation

code(for: "Remove argument label") {
    // Function
    func sayHello(name: String) {
        print("Hello \(name)")
    }
    // Call Function

}

code(for: "Add a second parameter as a closure") {
    // Function
    
    // Call function
   
}

code(for: "Same function but call using a trailing closure") {
    // Function
    
    // Call function
    
}

code(for: "Add a parameter to the closure") {
    // Function
    func sayHello(_ name: String, completion: (String) -> Void) {
        print("Hello \(name)")
        let reverseName = String(name.reversed())
        completion(reverseName)
    }
    // Call function

}
/*:
[< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
