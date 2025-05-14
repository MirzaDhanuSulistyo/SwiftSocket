// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSocket",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftSocket",
            type: .dynamic,
            targets: ["SwiftSocket"])
    ],
    dependencies: [
        // No external dependencies are required based on the repository.
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        .target(
            name: "SwiftSocket",
            dependencies: [],
            path: "Sources/SwiftSocket"),
        .testTarget(
            name: "SwiftSocketTests",
            dependencies: ["SwiftSocket"],
            path: "Tests/SwiftSocketTests")
    ]
)