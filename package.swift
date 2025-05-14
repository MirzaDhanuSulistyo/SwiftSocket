// swift-tools-version:5.5
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
            targets: ["SwiftSocket"])
    ],
    targets: [
        .target(
            name: "SwiftSocket",
            path: "Sources",
            sources: [
                "Result.swift",
                "Socket.swift",
                "TCPClient.swift",
                "UDPClient.swift",
                "SwiftSocket.h"
            ],
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "SwiftSocketTests",
            dependencies: ["SwiftSocket"],
            path: "Tests/SwiftSocketTests"
        )
    ]
)