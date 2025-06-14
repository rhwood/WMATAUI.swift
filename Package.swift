// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WMATAUI",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "WMATAUI",
            targets: ["WMATAUI"])
    ],
    dependencies: [
        // allow dependencies incorporating software will directly use to be minimums
        .package(url: "https://github.com/emma-k-alexandra/WMATA.swift", from: "15.2.0"),
        // documentation and test dependencies should be exact
        .package(url: "https://github.com/nalexn/ViewInspector", exact: "0.10.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", exact: "1.4.4")
    ],
    targets: [
        .target(
            name: "WMATAUI",
            dependencies: [.product(name: "WMATA", package: "WMATA.swift")]),
        .testTarget(
            name: "WMATAUITests",
            dependencies: ["WMATAUI", "ViewInspector"])
    ]
)
