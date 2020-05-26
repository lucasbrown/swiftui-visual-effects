// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftUIVisualEffects",
	
	platforms: [
		.iOS(.v13)
	],
	
	products: [
		.library(name: "SwiftUIVisualEffects", targets: ["SwiftUIVisualEffects"])
	],
	
	targets: [
		.target(name: "SwiftUIVisualEffects", dependencies: []),
		.testTarget(name: "SwiftUIVisualEffectsTests", dependencies: ["SwiftUIVisualEffects"])
	]
)
