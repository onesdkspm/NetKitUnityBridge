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
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.3"),
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "2.0.3"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "NetKitUnityBridgeWrapper",
            dependencies: [
                .byName(name: "NetKitUnityBridge"),
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
            name: "NetKitUnityBridge",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/NetKitUnityBridge/2.0.3/NetKitUnityBridge.xcframework.zip",
            checksum: "8a5f21ce3d028619f2115cc69a05886b25f3799d3a821f06f9e7ebf95c994f79"
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
