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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/AlibabaCloudRUM.xcframework.zip",
            checksum: "f923387cdbb31b11f99b7443bdc3afb6208d3a1797c527c5e8a01abf22beccee"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/FMDB.xcframework.zip",
            checksum: "560939668e9d6bb99647b44fe5293afc9c77134144e28be143f0667889242d37"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/NetKitUnityBridge.xcframework.zip",
            checksum: "9a1e397e9245e7c942ae1d2c72fe4891405552baa2febe2a425064bc14ee53ca"
        ),
        .binaryTarget(
            name: "OpenBusiness",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/OpenBusiness.xcframework.zip",
            checksum: "ac6a30713d59e5439faa14e536788a732fbbd0d8c97e618d7f9e6ab07b16691f"
        ),
        .binaryTarget(
            name: "OpenCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/OpenCore.xcframework.zip",
            checksum: "a7dc071dcc82309602dbdbba4c8a999f6f6cb8c406f7febe27ad651d3c7564b3"
        ),
        .binaryTarget(
            name: "OpenRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/OpenRUM.xcframework.zip",
            checksum: "5aace14d23933fde695cc80f83b81aa3d10273272304dc44d6642c4a56b73777"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.1-dev-1411693/YYModel.xcframework.zip",
            checksum: "14e6bb36a7c09b8078430f4436a5c044fe9ebcdbda5c2733e7337c0f27ee4066"
        )
    ]
)
