// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "LicensePlist",
    products: [
        .executable(name: "license-plist", targets: ["LicensePlist"]),
        .library(name: "LicensePlistCore", targets: ["LicensePlistCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/kylef/Commander.git",
                 from: "0.0.0"),
        .package(url: "https://github.com/el-hoshino/APIKit.git",
                 from: "10.0.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git",
                 from: "1.0.0"),
        .package(url: "https://github.com/behrang/YamlSwift.git",
                 from: "3.0.0")
    ],
    targets: [
        .target(
            name: "LicensePlist",
            dependencies: [
                "LicensePlistCore",
                "Commander",
                "HeliumLogger"
            ]
        ),
        .target(
            name: "LicensePlistCore",
            dependencies: [
                "APIKit",
                "Commander",
                "HeliumLogger",
                "Yaml"
            ]
        ),
        .testTarget(name: "LicensePlistTests", dependencies: ["LicensePlistCore"])
    ]
)
