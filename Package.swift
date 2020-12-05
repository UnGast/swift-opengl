// swift-tools-version:5.0
import PackageDescription

#if canImport(Darwin)
let linkedGl = LinkerSetting.linkedFramework("OpenGl")
#else
let linkedGl = LinkerSetting.linkedLibrary("GL")
#endif

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
            linkerSettings: [linkedGl]),
        .target(
            name: "generator",
            dependencies: ["XML"],
            path: "sources/generator")]
)
