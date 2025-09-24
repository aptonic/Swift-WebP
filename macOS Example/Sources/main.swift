import Foundation
import WebP
import CoreGraphics

#if canImport(AppKit)
import AppKit
#endif

func main() {
    print("WebP macOS Example")

    // Load the sample image
    let imagePath = "jiro.jpg"
    guard let nsImage = NSImage(contentsOfFile: imagePath) else {
        print("Could not load image: \(imagePath)")
        return
    }

    print("Loaded image: \(nsImage.size)")

    do {
        // Test encoding
        let encoder = WebPEncoder()
        print("Encoding image to WebP...")
        let webpData = try encoder.encode(nsImage, config: .preset(.photo, quality: 95))
        print("Encoded image size: \(webpData.count) bytes")

        // Test decoding
        let decoder = WebPDecoder()
        print("Decoding WebP image...")
        var options = WebPDecoderOptions()
        options.scaledWidth = Int(nsImage.size.width)
        options.scaledHeight = Int(nsImage.size.height)
        let decodedImage = try decoder.decode(toNSImage: webpData, options: options)
        print("Decoded image: \(decodedImage.size)")

        // Test image inspector
        let features = try WebPImageInspector.inspect(webpData)
        print("WebP image features - Width: \(features.width), Height: \(features.height), Has Alpha: \(features.hasAlpha)")

        print("WebP conversion test completed successfully!")

    } catch {
        print("Error: \(error)")
    }
}

main()