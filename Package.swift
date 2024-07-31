// swift-tools-version:5.9
import PackageDescription

let package = Package(
   name: "SwiftDocumentScanner",
   platforms: [
       .iOS(.v13)
   ],
   products: [
       .library(
           name: "SwiftDocumentScanner",
           targets: ["SwiftDocumentScanner"]),
   ],
   dependencies: [
       // Add your dependencies here
       .package(url: "https://github.com/nibrmbrm/CropView.git", from: "0.1.6")
   ],
   targets: [
       .target(
           name: "SwiftDocumentScanner",
           dependencies: ["CropView"],
           path: "Sources/SwiftDocumentScanner",
           resources: [
               .process("Assets")
           ]),
       .testTarget(
           name: "SwiftDocumentScannerTests",
           dependencies: ["SwiftDocumentScanner"],
           path: "Tests"
       ),
   ]
)