// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "TabNavigable",
  products: [
    .library(name: "TabNavigable", targets: ["TabNavigable"]),
  ],
  targets: [
    .target(name: "TabNavigable"),
    .testTarget(name: "TabNavigableTests", dependencies: ["TabNavigable"]),
  ]
)
