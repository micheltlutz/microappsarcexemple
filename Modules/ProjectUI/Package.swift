// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProjectUI",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "ProjectUI",
            targets: ["ProjectUI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProjectUI",
            dependencies: []),
        .testTarget(
            name: "ProjectUITests",
            dependencies: ["ProjectUI"]),
    ]
)
