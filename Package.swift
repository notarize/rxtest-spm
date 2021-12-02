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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest-X13-6.2.0.xcframework.zip",
                      checksum: "048d9930315ed840e3831e95ed0ecbfe85de3fb9c2da82aa79b49ff6bb32da3e"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking-X13-6.2.0.xcframework.zip",
                      checksum: "cb2c19161ffc7d00e2ab9ef38747df53a2ce250ba4f99febbd2bd852ad95677e")
    ]
)
