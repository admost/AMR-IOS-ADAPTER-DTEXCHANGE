// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterDTExchange",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterDTExchange",
            targets: ["AMRAdapterDTExchange"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", from: "8.4.5")
    ],
    targets: [
        .target(
            name: "AMRAdapterDTExchange",
            dependencies: [
                "AMRAdapterDTExchangeLib",
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterDTExchange",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterDTExchangeLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-DTEXCHANGE/releases/download/8.4.5/AMRAdapterFyber.xcframework.zip",
            checksum: "ee7a7032ef1f3d2be3c1ada6e3fee8dcd96b612dc07f21663afe4dd6cba9f34d"
        )
    ]
)
