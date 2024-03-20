// swift-tools-version: 5.9
import PackageDescription

#if os(macOS)
  let swiftUIToolChainBug: [String: String]? = nil
#else /* os(macOS) */
  let swiftUIToolChainBug: [String: String]? = ["GtkBackend": "SwiftUI"]
#endif /* !os(macOS) */

let package = Package(
  name: "SwiftUIToolchainBug",
  platforms: [
    .macOS(.v14),
    .visionOS(.v1),
    .iOS(.v17),
    .tvOS(.v17),
    .watchOS(.v10)
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "BugExample",
      targets: ["BugExample"]
    ),

    .executable(
      name: "SwiftUIToolchainBug",
      targets: ["SwiftUIToolchainBug"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/furby-tm/swift-cross-ui", branch: "main")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.

    .target(
      name: "BugExample",
      dependencies: [
        .product(
          name: "GtkBackend",
          package: "swift-cross-ui",
          moduleAliases: swiftUIToolChainBug,
          condition: .when(platforms: [.linux, .windows])
        ),
      ]
    ),

    .executableTarget(
      name: "SwiftUIToolchainBug",
      dependencies: [
        .target(name: "BugExample")
      ]
    ),
  ]
)
