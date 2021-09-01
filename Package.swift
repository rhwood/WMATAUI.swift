// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WMATAUI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14),
        .tvOS(.v14),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "WMATAUI",
            targets: ["WMATAUI"])
    ],
    dependencies: [
        .package(name: "WMATA", url: "https://github.com/emma-k-alexandra/WMATA.swift", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "WMATAUI",
            dependencies: ["WMATA"]),
        .testTarget(
            name: "WMATAUITests",
            dependencies: ["WMATAUI"])
    ]
)
