// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TitanProfiling",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/bermudadigitalstudio/Titan.git", from: "0.8.0"),
	//.package(url: "https://github.com/swift-server/http.git", from: "0.1.0"),
        //.package(url: "https://github.com/bermudadigitalstudio/TitanSwiftHTTPAdapter.git", from: "0.1.0"),
	.package(url: "https://github.com/bermudadigitalstudio/TitanKituraAdapter.git", from: "0.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Server",
            dependencies: ["Titan", "TitanHealthz", "TitanKituraAdapter"])//, "TitanSwiftHTTPAdapter", "HTTP"]),
    ]
)
