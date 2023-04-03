/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Multiple Trailing Closures
 The rules for closure labelling are:

 Label of the first trailing closure is omitted.
 Labels of subsequent closures are required.
 */

import Foundation

enum TaskError: Error, LocalizedError {
    case oddNumber
    public var errorDescription: String? {
            switch self {
            case .oddNumber:
                return NSLocalizedString("Odd numbers not supported", comment: "Odd number error")
            }
        }
}
func performTask(value: Int,
                 onSuccess: () -> Void,
                 onFailure: (Error) -> Void,
                 onProgress: (Double) -> Void) {
    if value % 2 != 0 {
        onFailure(TaskError.oddNumber)
    } else {
        for step in 0...value {
            onProgress(Double(step)/Double(value))
        }
        onSuccess()
    }
}

code(for: "Version 1 - No Trailing Closure Syntax") {

}

code(for: "Version 2 - Last Trailing Closure") {

}

code(for: "Version 3 - Second Last ") {

}

code(for: "Version 4") {

}

code(for: "Let Xcode Do it") {
    
}
/*:
[< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
