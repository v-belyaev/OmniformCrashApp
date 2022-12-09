// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Dependencies",
  platforms: [
    .iOS(.v14),
    .macOS(.v12)
  ],
  products: [
    .library(
      name: "_Omniform",
      type: .static,
      targets: ["_Omniform"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/glukianets/Omniform",
      .upToNextMinor(from: "0.3.0")
    )
  ],
  targets: [
    .target(
      name: "_Omniform",
      dependencies: [
        .product(
          name: "Omniform",
          package: "Omniform"
        ),
        .product(
          name: "OmniformUI",
          package: "Omniform"
        ),
      ]
    )
  ]
)
