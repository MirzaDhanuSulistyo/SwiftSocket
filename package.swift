// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SwiftSocket",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "SwiftSocket",
            targets: ["SwiftSocket"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftSocket",
            path: "Sources"
        )
    ]
)
