// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxTest",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RxTest",
            targets: ["RxTest", "RxBlocking"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "RxTest",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest-X13.1-6.5.0.xcframework.zip",
                      checksum: "41b2cc0865afae57b1832cebf164b66ce88907669bdd75cd9dddbb36ad14fee2"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking-X13.1-6.5.0.xcframework.zip",
                      checksum: "f1b4f0dfe05afe300e2c6e24601c317e5065f902d1f5affeb6020287f74f38f8")
    ]
)
