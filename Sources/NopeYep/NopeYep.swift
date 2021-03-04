import Foundation

extension Bool: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        switch value.lowercased().trimmingCharacters(in: .whitespacesAndNewlines).returningScalar {
        case "nope","","0","nan","👎","❌","no yeah":
            self = false
        case "yep","1","0 but true","👍","✔️","yeah no", "for sure":
            self = true
        case "maybe", "🤷🏼‍♂️":
            self = Bool.random()
        default:
            self = false
        }
    }
}
