// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeScene",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "HomeScene",
            targets: ["HomeScene"]),
    ],
    dependencies: [
        .package(path: "ProjectUI"),
        .package(path: "ProjectFoundations")
    ],
    targets: [
        .target(
            name: "HomeScene",
            dependencies: ["ProjectUI", "ProjectFoundations"]),
        .testTarget(
            name: "HomeSceneTests",
            dependencies: ["HomeScene"]),
    ]
)
