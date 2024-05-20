import Foundation
import Ignite

struct BlankPrivacy: StaticPage {
    var title: String = ""
    
    func body(context: PublishingContext) -> [BlockElement] {
        defaultPrivacyContent()
    }
}