import SwiftTreeSitter
import TreeSitterSwift
import TreeSitterObjC
import TreeSitterCpp
import TreeSitterObjCpp

extension Language {
    static var swift: Language {
        Language(language: tree_sitter_swift(), name: "Swift")
    }
    static var objc: Language {
        Language(language: tree_sitter_objc(), name: "Objective-C")
    }
    static var cpp: Language {
        Language(language: tree_sitter_cpp(), name: "C++")
    }
    static var objcCpp: Language {
        Language(language: tree_sitter_objcpp(), name: "Objective-C++")
    }
}

extension Parser {
    public static var swift: Parser {
        Parser(language: .swift)
    }
    public static var objc: Parser {
        Parser(language: .objc)
    }
    public static var cpp: Parser {
        Parser(language: .cpp)
    }
    public static var objcCpp: Parser {
        Parser(language: .objcCpp)
    }
}