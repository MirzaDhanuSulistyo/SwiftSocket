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
        .library(
            name: "SwiftSocket",
            type: .dynamic,
            targets: ["SwiftSocket", "SwiftSocketC"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftSocket",
            dependencies: ["SwiftSocketC"],
            path: "Sources",
            exclude: ["ytcpsocket.c"],
            sources: ["TCPClient.swift", "TCPServer.swift", "UDPClient.swift", "UDPServer.swift", "Byte.swift", "Error.swift", "Result.swift", "Socket.swift"]
        ),
        .target(
            name: "SwiftSocketC",
            dependencies: [],
            path: "Sources",
            sources: ["ytcpsocket.c"],
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "SwiftSocketTests",
            dependencies: ["SwiftSocket"],
            path: "Tests/SwiftSocketTests"
        )
    ]
)