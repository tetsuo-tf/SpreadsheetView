// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "SpreadsheetView",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "SpreadsheetView", targets: ["SpreadsheetView"])
    ],
    targets: [
        .target(
            name: "SpreadsheetView",
            path: "Framework/Sources",
            exclude: ["Info.plist", "SpreadsheetView.h"]
        ),
        .testTarget(
            name: "SpreadsheetViewTests",
            dependencies: ["SpreadsheetView"],
            path: "Framework/Tests",
            exclude: ["Info.plist", "HostApp"]
        )
    ]
)
