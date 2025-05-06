// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftTreeSitter",
    products: [
        .library(name: "SwiftTreeSitter", targets: ["SwiftTreeSitter"]),
        .library(name: "TreeSitterDocument", targets: ["TreeSitterDocument"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "tree-sitter",
                path: "tree-sitter/lib",
                sources: ["src/lib.c"],
                publicHeadersPath: "include",
                cSettings: [.headerSearchPath("src/")]),

        .target(name: "TreeSitterSwift",
                path: "tree-sitter-swift",
                sources: ["src/parser.c", "src/scanner.c"],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),

        .target(name: "TreeSitterObjC",
                path: "tree-sitter-objc",
                sources: ["src/parser.c"],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),

        .target(name: "TreeSitterCpp",
                path: "tree-sitter-cpp",
                sources: ["src/parser.c", "src/scanner.c"],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),

        .target(name: "TreeSitterObjCpp",
                path: "tree-sitter-objcpp",
                sources: ["src/parser.c", "src/scanner.c"],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),

        .target(name: "SwiftTreeSitter", dependencies: ["tree-sitter"]),

        .testTarget(name: "SwiftTreeSitterTests",
                    dependencies: ["SwiftTreeSitter", "TreeSitterSwift"]),

        .target(name: "TreeSitterDocument", dependencies: ["SwiftTreeSitter"]),

        .testTarget(name: "TreeSitterDocumentTests",
                    dependencies: ["TreeSitterDocument", "TreeSitterSwift"]),
    ]
)
