import Foundation
import Ignite

public struct Footer: Component {
    public init() { }

    public func body(context: PublishingContext) -> [any PageElement] {
        Text("Jean Demeusy © 2024")
            .font(.title6)
            .fontWeight(.thin)
            .foregroundStyle(.slateGray)
            .horizontalAlignment(.center)
    }
}
