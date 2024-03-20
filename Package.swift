// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(macOS)
  let swiftUIToolChainBug: [String: String]? = nil
#else /* os(macOS) */
  let swiftUIToolChainBug: [String: String]? = ["Algorithms": "SwiftUI"]
#endif /* !os(macOS) */

let package = Package(
  name: "SwiftUIToolchainBug",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .executable(
      name: "SwiftUIToolchainBug",
      targets: ["SwiftUIToolchainBug"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .executableTarget(
      name: "SwiftUIToolchainBug",
      dependencies: [
        .product(
          name: "Algorithms", 
          package: "swift-algorithms", 
          moduleAliases: ["Algorithms": "SwiftUI"], 
          condition: .when(platforms: [.linux, .windows])
        ),
      ]
    ),
  ]
)
