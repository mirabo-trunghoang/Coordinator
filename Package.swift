// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Coordinator",
    platforms: [
        .iOS(.v13),
        .macOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Coordinator", targets: ["Coordinator"])
    ],
    dependencies: [
        .package(url: "https://github.com/mirabo-trunghoang/Merge", branch: "master"),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: [
                "Merge",
                "SwiftUIX"
            ],
            path: "Sources"
        ),
    ]
)
