import Foundation

protocol MyComparable {
    static func < (lhs: Self, rhs: Self) -> Bool
    static func == (lhs: Self, rhs: Self) -> Bool
    static func <= (lhs: Self, rhs: Self) -> Bool
    static func >= (lhs: Self, rhs: Self) -> Bool
    static func > (lhs: Self, rhs: Self) -> Bool
}

extension MyComparable {
    static func <= (lhs: Self, rhs: Self) -> Bool {
        return lhs < rhs || lhs == rhs
    }

    static func >= (lhs: Self, rhs: Self) -> Bool {
        return !(lhs < rhs)
    }

    static func > (lhs: Self, rhs: Self) -> Bool {
        return !(lhs <= rhs)
    }
}