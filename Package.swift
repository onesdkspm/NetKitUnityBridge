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
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "1.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "NetKitUnityBridgeWrapper",
            dependencies: [
                .byName(name: "AlibabaCloudRUM"),
                .byName(name: "AlibabaCloudRUMSDK"),
                .byName(name: "FMDB"),
                .byName(name: "NetKitUnityBridge"),
                .byName(name: "YYModel"),
                .product(name: "UnityBridge", package: "UnityBridge"),
                .product(name: "BTSDKUIKitCore", package: "BTSDKUIKitCore"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474835/AlibabaCloudRUM.xcframework.zip",
            checksum: "9e954d2980038bed7e556490ca703e14551621c1c2da9b8ecd2b257896bc5bb7"
        ),
        .binaryTarget(
            name: "AlibabaCloudRUMSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474835/AlibabaCloudRUMSDK.xcframework.zip",
            checksum: "eee7c03f27a24b0d4505d5594d8391a1093f78d0e9012aed5fb63b98ee676132"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474835/FMDB.xcframework.zip",
            checksum: "3040e124d2958105a1c72eff8e8c4e5fffe2f6ff0f5780fbc5e1b52dc9a8bd59"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474835/NetKitUnityBridge.xcframework.zip",
            checksum: "251164a9f8b42f828cee9783deb842051219daa0a5cc7ce5a1647f2dbedfef87"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474835/YYModel.xcframework.zip",
            checksum: "0438989f25d57d55c0dc3993ee7cdb0e6a3cb07471170681138b3e6698b4e2e6"
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
