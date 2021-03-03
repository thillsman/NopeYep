extension Bool: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        switch value.lowercased() {
        case "nope":
            self = false
        case "yep":
            self = true
        case "maybe", "🤷🏼‍♂️":
            self = [true, false].randomElement() ?? false
        default:
            self = false
        }
    }
}
