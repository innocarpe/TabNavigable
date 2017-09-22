// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "TabNavigatable",
  products: [
    .library(name: "TabNavigatable", targets: ["TabNavigatable"]),
  ],
  targets: [
    .target(name: "TabNavigatable"),
    .testTarget(name: "TabNavigatableTests", dependencies: ["TabNavigatable"]),
  ]
)
