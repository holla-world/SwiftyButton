// swift-tools-version:5.3
//
//  Package.swift
import PackageDescription

let package = Package(
  name: "SwiftyButton",
  platforms: [
    .iOS(.v9.0),
    .macOS(.v10.10),
    .tvOS(.v9.0),
    .watchOS(.v6.2)
  ],
  products: [
      // Products define the executables and libraries produced by a package, and make them visible to other packages.
      .library(name: "SwiftyButton", targets: ["SwiftyButton"]),
  ],
  targets: [
      // Targets are the basic building blocks of a package. A target can define a module or a test suite.
      // Targets can depend on other targets in this package, and on products in packages which this package depends on.
      .target(name: "SwiftyButton"),
  ],
  swiftLanguageVersions: [.v5]
)
