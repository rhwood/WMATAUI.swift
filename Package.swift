// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WMATAUI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "WMATAUI",
            targets: ["WMATAUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/emma-k-alexandra/WMATA.swift", from: "15.1.0"),
        .package(url: "https://github.com/nalexn/ViewInspector", from: "0.9.7")
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
