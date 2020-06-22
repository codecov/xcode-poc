import Foundation

class IgnoredSwiftText {
    static func sayHello() -> String {
        if ("abc" == "def") {
            return "This does not return!"
        }
        return "Hello from Swift :)"
    }
    
    static func sayGoobye() -> String {
        return "Goodbye from Swift :("
    }
}
