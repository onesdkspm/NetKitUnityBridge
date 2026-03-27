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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/AlibabaCloudRUM.xcframework.zip",
            checksum: "17f7dff60043e771b8f678d495326ce00ac6fd50b33d72de0bd5648116d7a7ba"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/FMDB.xcframework.zip",
            checksum: "e18b41a9e44002e25cbca85b7a5475fcf58963ed9390f0b850b0b3c6663d4aa8"
        ),
        .binaryTarget(
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/NetKitUnityBridge.xcframework.zip",
            checksum: "1dbb399716993102a275ffa7ba7db19c92d95758eff1c779218d751a8bb9ac71"
        ),
        .binaryTarget(
            name: "OpenBusiness",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/OpenBusiness.xcframework.zip",
            checksum: "5fb9ac083685978260e65b39bf6a3804d5069e23f8ca1191e1ffb2270f2c4ef9"
        ),
        .binaryTarget(
            name: "OpenCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/OpenCore.xcframework.zip",
            checksum: "9401cb11a26382a336cd529648951335ac72a491a5ce4df82d3893a72460d956"
        ),
        .binaryTarget(
            name: "OpenRUM",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/OpenRUM.xcframework.zip",
            checksum: "c193492a057a7daffc1ccbafdaa78530f4b15e4610e584aad6e15f804a8ba961"
        ),
        .binaryTarget(
            name: "YYModel",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.0-dev-1410705/YYModel.xcframework.zip",
            checksum: "04103899a1b9885ce634f2f2b49d0108e7cb07b68a554b8cacc59c9db284174f"
        )
    ]
)
