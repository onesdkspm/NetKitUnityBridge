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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/AlibabaCloudRUM.xcframework.zip",
            checksum: "692ef66fd939b772a0694d1c3b3871dd6841a653eea97907e39d6bf680f1bffb"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/FMDB.xcframework.zip",
            checksum: "816f9f52f6acc86171a41a6c0acdfe54231be33baf990dd8caaa9983c8a790f2"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/NetKitUnityBridge.xcframework.zip",
            checksum: "81e261594b73bd667ae8876e6b99e625fd7652ab639e7cac736bba02eea012bb"
        ),
        .binaryTarget(
            name: "OpenBusiness",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/OpenBusiness.xcframework.zip",
            checksum: "1b20b51842a924e110fb704f98ef462c7c5ff14b6fc305b6aa94ee4c48e548ce"
        ),
        .binaryTarget(
            name: "OpenCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/OpenCore.xcframework.zip",
            checksum: "1e080bd1b275e3945e1d5f1949ca6888c3778546dde5ddce4abf783a904f0eeb"
        ),
        .binaryTarget(
            name: "OpenRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/OpenRUM.xcframework.zip",
            checksum: "feb1c9e04587d91f35817d8ce9e7dc7ef7d4a3e14c38cf2389afce3062fe1fc9"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0/YYModel.xcframework.zip",
            checksum: "48adb50f2a778496b09bd1f99f61028b40555ac093d568765c64d92efc7c0c82"
        )
    ]
)
