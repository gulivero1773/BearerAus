// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "BearerAus",
    products: [
        .library(name: "BearerAus", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0-rc"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc"),
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0-rc"),
        .package(url: "https://github.com/vapor/auth.git", from: "2.0.0-rc")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "Leaf", "FluentSQLite", "Authentication"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

