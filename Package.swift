// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterMojo",
    products: [
        .library(name: "TreeSitterMojo", targets: ["TreeSitterMojo"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterMojo",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "package.json",
                    "README.md",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
