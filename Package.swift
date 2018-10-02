// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Blake2",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Blake2", targets: ["Blake2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/OperatorFoundation/Datable.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "CBlake2", dependencies: []),
        .target(name: "Blake2-ObjC", dependencies: ["CBlake2"]),
        .target(
            name: "Blake2",
            dependencies: ["Blake2-ObjC"]),
        .testTarget(
            name: "Blake2Tests",
            dependencies: ["Blake2", "Datable"]),
    ]
)
