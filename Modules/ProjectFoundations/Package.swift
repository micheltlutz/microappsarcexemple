// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProjectFoundations",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "ProjectFoundations",
            targets: ["ProjectFoundations"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProjectFoundations",
            dependencies: []),
        .testTarget(
            name: "ProjectFoundationsTests",
            dependencies: ["ProjectFoundations"]),
    ]
)
