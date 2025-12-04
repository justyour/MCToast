// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MCToast",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MCToast",
            targets: ["MCToast"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-ios.git", .upToNextMajor(from: "4.5.0"))
    ],
    targets: [
        
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MCToast",
            dependencies: [.product(name: "Lottie", package: "lottie-ios")],
            path: "Sources",
            sources: ["Classes"],
            resources: [.process("Assets")]),
        .testTarget(
            name: "MCToastTests",
            dependencies: ["MCToast"]
        ),
        
    ]
)
