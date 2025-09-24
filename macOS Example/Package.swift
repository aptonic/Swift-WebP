// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "macOSExample",
    platforms: [
        .macOS(.v10_13)
    ],
    dependencies: [
        .package(path: "..")
    ],
    targets: [
        .target(
            name: "macOSExample",
            dependencies: ["WebP"],
            path: "Sources"
        )
    ]
)
