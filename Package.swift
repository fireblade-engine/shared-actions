// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "shared-actions",
    products: [
        
        .library(name: "SharedActions", targets: ["SharedActions"]),
        .executable(name: "shared-actions", targets: ["shared-actions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.8.2")
    ],
    targets: [
        .target(name: "SharedActions"),
        .executableTarget(name: "shared-actions", dependencies: [
            "SharedActions",
            .product(name: "ArgumentParser", package: "swift-argument-parser")
        ]),
        .testTarget(
            name: "SharedActionsTests",
            dependencies: ["SharedActions"]
        ),
    ]
)
