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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474864/AlibabaCloudRUM.xcframework.zip",
            checksum: "b7b42414c1399bf0888d8f582063d7e0c1f9a6eb63810f1cee262dc957401a92"
        ),
        .binaryTarget(
            name: "AlibabaCloudRUMSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474864/AlibabaCloudRUMSDK.xcframework.zip",
            checksum: "addd3c46232cdc279369a4a963e1a4e013552723c823e4636bd59d120fb8b534"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474864/FMDB.xcframework.zip",
            checksum: "7f149963317cbf4919173ec821187197b2dac1485eecd93d2c0218a9f47587f8"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474864/NetKitUnityBridge.xcframework.zip",
            checksum: "b90a8e5feb5c5f45c7eb5b69db0ebc4ff359a22a5f3c9562078103a693fc34e1"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1474864/YYModel.xcframework.zip",
            checksum: "6b4a3558d8a6eaf4fe419bd0aa1edd4a7c84f5eec87e05ec2c02386712def7ed"
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
