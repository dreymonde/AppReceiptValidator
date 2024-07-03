// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "AppReceiptValidator",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        // .watchOS(.v6) watchOS doesn't have UIDevice.current so we can parse, but not validate hash, also, it cannot run XCTest
    ],
    products: [
        .library(name: "AppReceiptValidator", targets: ["AppReceiptValidator"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IdeasOnCanvas/ASN1Decoder", from: "1.8.2"),
    ],
    targets: [
        .target(name: "AppReceiptValidator",
                dependencies: ["ASN1Decoder"],
                resources: [
                    .copy("Resources/PrivacyInfo.xcprivacy")
                ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
