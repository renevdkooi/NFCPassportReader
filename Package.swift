// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NFCPassportReader",
    platforms: [.iOS("15.0")],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "NFCPassportReader",
            targets: ["NFCPassportReader"]),
    ],
    dependencies: [
        .package(
          name: "BoringSSL-GRPC",
          url: "https://github.com/firebase/boringssl-SwiftPM.git",
          "0.9.0"..<"0.10.0"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "NFCPassportReader",
            dependencies: [
            .product(name:"openssl_grpc", package: "BoringSSL-GRPC"),
          ],
    ]
)

