// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftSocket",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "SwiftSocket",
            targets: ["SwiftSocket"]
        ),
    ],
    targets: [
        .target(
            name: "CySocket",
            path: "Sources/CySocket",
            publicHeadersPath: "."
        ),
        .target(
            name: "SwiftSocket",
            dependencies: ["CySocket"],
            path: "Sources/SwiftSocket"
        )
    ]
)
