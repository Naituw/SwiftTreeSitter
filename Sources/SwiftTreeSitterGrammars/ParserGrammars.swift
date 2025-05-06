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
	public static func swift() throws -> Parser {
		let parser = Parser()
		try parser.setLanguage(Language.swift)
		return parser
	}
	
    public static func objc() throws -> Parser {
		let parser = Parser()
		try parser.setLanguage(Language.objc)
		return parser
    }
    
	public static func cpp() throws -> Parser {
		let parser = Parser()
		try parser.setLanguage(Language.cpp)
		return parser
	}
	
	public static func objcCpp() throws -> Parser {
		let parser = Parser()
		try parser.setLanguage(Language.objcCpp)
		return parser
	}
}
