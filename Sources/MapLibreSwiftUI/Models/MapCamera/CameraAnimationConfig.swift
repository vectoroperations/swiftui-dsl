import Foundation
import MapLibre

public struct CameraAnimationConfig: Hashable {
    public enum AnimationMode: Hashable {
        case flyTo
        case easeTo
        case linearTo
        case moveTo
        case none
    }
    
    public let duration: TimeInterval
    public let mode: AnimationMode
    
    public init(duration: TimeInterval, mode: AnimationMode) {
        self.duration = duration
        self.mode = mode
    }
    
    public static let `default` = CameraAnimationConfig(duration: 0.3, mode: .easeTo)
    public static let none = CameraAnimationConfig(duration: 0, mode: .none)
}
