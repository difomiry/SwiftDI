// swift-tools-version: 5.6

import PackageDescription

let package = Package(
	name: "SwiftDI",
	products: [
		.library(
			name: "SwiftDI",
			targets: ["SwiftDI"]
		)
	],
	targets: [
		.target(
			name: "SwiftDI",
			dependencies: []
		)
	]
)
