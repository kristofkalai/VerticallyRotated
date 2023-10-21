// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VerticallyRotated",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VerticallyRotated",
            targets: ["VerticallyRotated"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/stateman92/SizePreferenceKey", exact: .init(0, 0, 2))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "VerticallyRotated",
            dependencies: ["SizePreferenceKey"],
            path: "Sources"),
        .testTarget(
            name: "VerticallyRotatedTests",
            dependencies: ["VerticallyRotated"]),
    ]
)
