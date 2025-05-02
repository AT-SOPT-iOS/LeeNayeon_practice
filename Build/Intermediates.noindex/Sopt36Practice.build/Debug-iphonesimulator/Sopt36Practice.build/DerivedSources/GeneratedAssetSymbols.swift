import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "heartBlack" asset catalog image resource.
    static let heartBlack = DeveloperToolsSupport.ImageResource(name: "heartBlack", bundle: resourceBundle)

    /// The "heartRed" asset catalog image resource.
    static let heartRed = DeveloperToolsSupport.ImageResource(name: "heartRed", bundle: resourceBundle)

    /// The "product1" asset catalog image resource.
    static let product1 = DeveloperToolsSupport.ImageResource(name: "product1", bundle: resourceBundle)

    /// The "product10" asset catalog image resource.
    static let product10 = DeveloperToolsSupport.ImageResource(name: "product10", bundle: resourceBundle)

    /// The "product2" asset catalog image resource.
    static let product2 = DeveloperToolsSupport.ImageResource(name: "product2", bundle: resourceBundle)

    /// The "product3" asset catalog image resource.
    static let product3 = DeveloperToolsSupport.ImageResource(name: "product3", bundle: resourceBundle)

    /// The "product4" asset catalog image resource.
    static let product4 = DeveloperToolsSupport.ImageResource(name: "product4", bundle: resourceBundle)

    /// The "product5" asset catalog image resource.
    static let product5 = DeveloperToolsSupport.ImageResource(name: "product5", bundle: resourceBundle)

    /// The "product6" asset catalog image resource.
    static let product6 = DeveloperToolsSupport.ImageResource(name: "product6", bundle: resourceBundle)

    /// The "product7" asset catalog image resource.
    static let product7 = DeveloperToolsSupport.ImageResource(name: "product7", bundle: resourceBundle)

    /// The "product8" asset catalog image resource.
    static let product8 = DeveloperToolsSupport.ImageResource(name: "product8", bundle: resourceBundle)

    /// The "product9" asset catalog image resource.
    static let product9 = DeveloperToolsSupport.ImageResource(name: "product9", bundle: resourceBundle)

    /// The "profile1" asset catalog image resource.
    static let profile1 = DeveloperToolsSupport.ImageResource(name: "profile1", bundle: resourceBundle)

    /// The "profile2" asset catalog image resource.
    static let profile2 = DeveloperToolsSupport.ImageResource(name: "profile2", bundle: resourceBundle)

    /// The "profile3" asset catalog image resource.
    static let profile3 = DeveloperToolsSupport.ImageResource(name: "profile3", bundle: resourceBundle)

    /// The "profile4" asset catalog image resource.
    static let profile4 = DeveloperToolsSupport.ImageResource(name: "profile4", bundle: resourceBundle)

    /// The "welcomeVCimage" asset catalog image resource.
    static let welcomeVCimage = DeveloperToolsSupport.ImageResource(name: "welcomeVCimage", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "heartBlack" asset catalog image.
    static var heartBlack: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .heartBlack)
#else
        .init()
#endif
    }

    /// The "heartRed" asset catalog image.
    static var heartRed: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .heartRed)
#else
        .init()
#endif
    }

    /// The "product1" asset catalog image.
    static var product1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product1)
#else
        .init()
#endif
    }

    /// The "product10" asset catalog image.
    static var product10: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product10)
#else
        .init()
#endif
    }

    /// The "product2" asset catalog image.
    static var product2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product2)
#else
        .init()
#endif
    }

    /// The "product3" asset catalog image.
    static var product3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product3)
#else
        .init()
#endif
    }

    /// The "product4" asset catalog image.
    static var product4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product4)
#else
        .init()
#endif
    }

    /// The "product5" asset catalog image.
    static var product5: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product5)
#else
        .init()
#endif
    }

    /// The "product6" asset catalog image.
    static var product6: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product6)
#else
        .init()
#endif
    }

    /// The "product7" asset catalog image.
    static var product7: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product7)
#else
        .init()
#endif
    }

    /// The "product8" asset catalog image.
    static var product8: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product8)
#else
        .init()
#endif
    }

    /// The "product9" asset catalog image.
    static var product9: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .product9)
#else
        .init()
#endif
    }

    /// The "profile1" asset catalog image.
    static var profile1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile1)
#else
        .init()
#endif
    }

    /// The "profile2" asset catalog image.
    static var profile2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile2)
#else
        .init()
#endif
    }

    /// The "profile3" asset catalog image.
    static var profile3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile3)
#else
        .init()
#endif
    }

    /// The "profile4" asset catalog image.
    static var profile4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile4)
#else
        .init()
#endif
    }

    /// The "welcomeVCimage" asset catalog image.
    static var welcomeVCimage: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .welcomeVCimage)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "heartBlack" asset catalog image.
    static var heartBlack: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .heartBlack)
#else
        .init()
#endif
    }

    /// The "heartRed" asset catalog image.
    static var heartRed: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .heartRed)
#else
        .init()
#endif
    }

    /// The "product1" asset catalog image.
    static var product1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product1)
#else
        .init()
#endif
    }

    /// The "product10" asset catalog image.
    static var product10: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product10)
#else
        .init()
#endif
    }

    /// The "product2" asset catalog image.
    static var product2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product2)
#else
        .init()
#endif
    }

    /// The "product3" asset catalog image.
    static var product3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product3)
#else
        .init()
#endif
    }

    /// The "product4" asset catalog image.
    static var product4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product4)
#else
        .init()
#endif
    }

    /// The "product5" asset catalog image.
    static var product5: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product5)
#else
        .init()
#endif
    }

    /// The "product6" asset catalog image.
    static var product6: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product6)
#else
        .init()
#endif
    }

    /// The "product7" asset catalog image.
    static var product7: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product7)
#else
        .init()
#endif
    }

    /// The "product8" asset catalog image.
    static var product8: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product8)
#else
        .init()
#endif
    }

    /// The "product9" asset catalog image.
    static var product9: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .product9)
#else
        .init()
#endif
    }

    /// The "profile1" asset catalog image.
    static var profile1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile1)
#else
        .init()
#endif
    }

    /// The "profile2" asset catalog image.
    static var profile2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile2)
#else
        .init()
#endif
    }

    /// The "profile3" asset catalog image.
    static var profile3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile3)
#else
        .init()
#endif
    }

    /// The "profile4" asset catalog image.
    static var profile4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile4)
#else
        .init()
#endif
    }

    /// The "welcomeVCimage" asset catalog image.
    static var welcomeVCimage: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .welcomeVCimage)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

