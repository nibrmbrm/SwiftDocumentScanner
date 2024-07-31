// swift-tools-version:5.9
import PackageDescription

let package = Package(
   name: "SwiftDocumentScanner",
   platforms: [
       .iOS(.v10)
   ],
   products: [
       .library(
           name: "SwiftDocumentScanner",
           targets: ["SwiftDocumentScanner"]),
   ],
   targets: [
       .target(
           name: "SwiftDocumentScanner",
           dependencies: [],
           path: "Sources/SwiftDocumentScanner",  // Adjust the path to the source files
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