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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest-6.2.0.xcframework.zip",
                      checksum: "7598566dd52e15089252fff1a8a52e7e789e8e7e520b38bdc73945ba77349262"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking-6.2.0.xcframework.zip",
                      checksum: "4bed596d3afcf5fb5729af4b72d7b05398a9630c934afce1c6259bd867fb4617")
    ]
)
