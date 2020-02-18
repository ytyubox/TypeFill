// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TypeFill",
    products: [
        .executable(name: "typefill", targets: ["TypeFill"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/jpsim/SourceKitten", .upToNextMinor(from: "0.29.0")),
        .package(url: "https://github.com/Carthage/Commandant.git", .upToNextMinor(from: "0.17.0")),
        .package(url: "https://github.com/onevcat/Rainbow", from: "3.1.5")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TypeFill",
            dependencies: [
                "TypeFillKit"
                ]),
        .target(
            name: "TypeFillKit",
            dependencies: [
                "Commandant",
                "SourceKittenFramework",
                "Rainbow",
        ]),
        .target(
            name: "TestingData",
            exclude: [
                "cursor.yml",
                "open.yml",
                "requests.txt",
            ]
        ),
        .testTarget(
            name: "TypeFillTests",
            dependencies: ["TypeFillKit"])
    ]
)
