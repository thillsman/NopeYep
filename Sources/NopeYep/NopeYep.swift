import Foundation

extension Bool: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        switch value.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) {
        case "nope","","0","nan","👎","👎🏻","👎🏼","👎🏽","👎🏾","👎🏿":
            self = false
        case "yep","1","0 but true","👍","👍🏻","👍🏼","👍🏽","👍🏾","👍🏿":
            self = true
        case "maybe", "🤷🏼‍♂️":
            self = [true, false].randomElement() ?? false
        default:
            self = false
        }
    }
}
