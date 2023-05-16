// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libaom",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "libaom",
            targets: ["libaom"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SDWebImage/libvmaf-Xcode.git", from: "2.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "libaom",
            dependencies: ["libvmaf"],
            path: ".",
            exclude: ["aom/av1/common/x86", "aom/av1/encoder/x86", "aom/aom_dsp/x86", "aom/aom_dsp/mips", "aom/aom_dsp/arm", "aom/aom_dsp/simd", "aom/aom_scale/mips", "aom/av1/common/arm", "aom/av1/common/ppc", "aom/av1/encoder/mips", "aom/av1/encoder/arm", "aom/aom_dsp/ssim.h", "aom/aom_dsp/ssim.c", "aom/aom_ports/ppc.h", "aom/aom_ports/ppc_cpudetect.c", "aom/aom_ports/arm.h", "aom/aom_ports/arm_cpudetect.c", "aom/av1/decoder/inspection.h", "aom/av1/decoder/inspection.c"],
            sources: ["aom/aom", "aom/aom_dsp", "aom/aom_mem", "aom/aom_ports", "aom/aom_scale", "aom/aom_util", "aom/av1", "aom/third_party/vector", "aom/third_party/fastfeat", "generate", "aom/common/args_helper.h", "aom/common/args_helper.c"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("aom")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
