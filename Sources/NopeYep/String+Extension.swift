import Foundation

extension String {
    var returningScalar: String {
        guard self.count == 1, let scalars = unicodeScalars.first else { return self }
        return String(scalars)
    }
}
