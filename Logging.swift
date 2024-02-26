import Foundation;

/**
 * My program calculates how many logs can fit on a truck.
 *
 * @author  Kent Gatera
 * @version 1.0
 * @since   2024-Feb-26
 */

// Defining the error cases.
enum errorCases: Error {
      case invalidNumeral
}
func LoggingInput()throws -> Double {
      // Input prompt.
      print("What is the width of the logs?: ", terminator: "")
      if let input = readLine(), let logWidth:Double = Double(input), logWidth > 0 {
        // Input passes, return the input value
        return logWidth
    } else {
        // Raises "errorCases.invalidNumerals"
        throw errorCases.invalidNumeral
    }
}

do {
    // Initializing variables and constants.
    let logSize = try LoggingInput()
    let massPerUnit: Double = 20
    var logCapacity: Int
    // Calculating the logCapacity.
    logCapacity = 1100 / (Int)(logSize * massPerUnit)
    // Printing the logCapacity.
    print("The truck can fit \(logCapacity) of those logs.")

} catch {
      // Instructions for catch case.
    print("Please enter a valid numeral width > 0")
}
