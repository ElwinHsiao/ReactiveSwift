// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "ReactiveSwift",
    products: [
        .library(name: "ReactiveSwift", targets: ["ReactiveSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/antitypical/Result.git", from: "4.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "1.3.2"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "7.3.1"),
    ],
    targets: [
        .target(name: "ReactiveSwift", dependencies: ["Result"], path: "Sources"),
        .testTarget(name: "ReactiveSwiftTests", dependencies: ["ReactiveSwift", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [4]
)
