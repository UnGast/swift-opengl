// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "GL",
    products: [
        .library(name: "GL", targets: ["GL"]),
        .executable(name: "generator", targets: ["generator"])],
    dependencies:  [
        .package(url: "https://github.com/kelvin13/swiftxml", .branch("master"))],
    targets:       [
        .target(
            name: "GL",
            dependencies: [],
            path: "sources/opengl",
            linkerSettings: [.linkedFramework("gl")]),
        .target(
            name: "generator",
            dependencies: ["XML"],
            path: "sources/generator")]
)
