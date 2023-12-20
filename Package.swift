// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ButtonStyles",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "ButtonStyles",
            targets: ["ButtonStyles"]),
    ],
    targets: [
        .target(
            name: "ButtonStyles")
    ]
)
