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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/AlibabaCloudRUM.xcframework.zip",
            checksum: "28b0ce00b65257a2ed07bae18f0661de5f938bd70ca40bdd66d764d119800dd3"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/FMDB.xcframework.zip",
            checksum: "649a8d7fa1f888131fef1b02c473861ff85cda3e3249eb607c8123d99f320fd8"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/NetKitUnityBridge.xcframework.zip",
            checksum: "0e873f94d512e62a4ae106d9763a9a28e14a00406da530addea9fe7926413199"
        ),
        .binaryTarget(
            name: "OpenBusiness",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/OpenBusiness.xcframework.zip",
            checksum: "ccfbaf49b3436e87493ca0505ac3b46cfb0ce608a7014d1c73f36854f9f83d3c"
        ),
        .binaryTarget(
            name: "OpenCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/OpenCore.xcframework.zip",
            checksum: "7ef7881973a5edd8a0a2c8bd2dd647a3ae488dc0de5a4dfa707a5b5b0bac98ee"
        ),
        .binaryTarget(
            name: "OpenRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/OpenRUM.xcframework.zip",
            checksum: "ba8d9f91a41b5df33a913149995edde508cf435ec6cd51a9bfbb6fda5706cb37"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1/YYModel.xcframework.zip",
            checksum: "c70813ae36cecec476701764494d3ad1d9aef75cf07f1b5c75a0e5f7b24f9b09"
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
