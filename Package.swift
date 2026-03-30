// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NetKitUnityBridge",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NetKitUnityBridge",
            targets: ["NetKitUnityBridgeWrapper", "NetKitUnityBridgeCommonResources"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "NetKitUnityBridgeWrapper",
            dependencies: [
                .byName(name: "AlibabaCloudRUM"),
                .byName(name: "FMDB"),
                .byName(name: "NetKitUnityBridge"),
                .byName(name: "OpenBusiness"),
                .byName(name: "OpenCore"),
                .byName(name: "OpenRUM"),
                .byName(name: "YYModel"),
                .product(name: "UnityBridge", package: "UnityBridge"),
            ],
            path: "NetKitUnityBridgeWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "AlibabaCloudRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/AlibabaCloudRUM.xcframework.zip",
            checksum: "e2dc79c6e94f8037190b702b7749bf431caabfa7c4572b90567b8e33c7bd2ea7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/FMDB.xcframework.zip",
            checksum: "dae045dd91dc3e19525565220d376486710924959110fd9244dd917fbec2f416"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/NetKitUnityBridge.xcframework.zip",
            checksum: "c0b9acef2d43e5670c7448fe79860cfccac8a53e3f38510004f7412c10ae8a8d"
        ),
        .binaryTarget(
            name: "OpenBusiness",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/OpenBusiness.xcframework.zip",
            checksum: "af1e2ece1c3f31fa7568f4315206ec3de53a3842c65817ebe1e7a88159932742"
        ),
        .binaryTarget(
            name: "OpenCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/OpenCore.xcframework.zip",
            checksum: "a1e851357113a1444cb43bb12b475c9e4f62369eeeadac110e7478c5bf4d02ac"
        ),
        .binaryTarget(
            name: "OpenRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/OpenRUM.xcframework.zip",
            checksum: "4dd001cbdf157db1e19b6a8f803980e9829db2e9538858d213e5f457297f0f45"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411704/YYModel.xcframework.zip",
            checksum: "a9e2bc3efa053e4c19669f6b448292d688730329a4c8d7d177c613e0cb9be6f6"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "NetKitUnityBridgeCommonResources",
            dependencies: [],
            path: "NetKitUnityBridgeCommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
