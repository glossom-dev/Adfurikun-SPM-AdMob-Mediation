// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-AdMob-Mediation",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunAdMobMediation", targets: ["AdfurikunAdMobMediation"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.4.000"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "12.0.0"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunAdMobMediation",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
