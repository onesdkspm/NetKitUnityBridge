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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1473191/AlibabaCloudRUM.xcframework.zip",
            checksum: "7f8b863d0f4611258d4496d8c80e0c024bc0f1c50dbe36fef74db4b2b72dd0a1"
        ),
        .binaryTarget(
            name: "AlibabaCloudRUMSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1473191/AlibabaCloudRUMSDK.xcframework.zip",
            checksum: "8f3ff35c0327d035505bbe448f3ed39638e1ee91ecc7327fc97ed1cbd34d0148"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1473191/FMDB.xcframework.zip",
            checksum: "76356a939b5904a7cfb91f2e9d6254765b1b4a660535acdd7a2aec4d6f26465b"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1473191/NetKitUnityBridge.xcframework.zip",
            checksum: "d4980a6163f14e1fb99cb46716f7544283bd8986eb90f26ef9dd6177f086f34a"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/1.2.7-dev-1473191/YYModel.xcframework.zip",
            checksum: "53c653a3edb103d6e4064420187ca9108390d746b48d77b884f7579f9cc13dde"
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
