import Foundation
import Ignite

struct PrivacyMovizzz: StaticPage {
    var appName: String = "Movizzz"
    var startDate: String = "2022-07-19"
    var title: String = "Movizzz Privacy Policy"
    var path = "/privacy/movizzz"
    
    func body(context: PublishingContext) -> [BlockElement] {
        defaultPrivacyContent(for: appName, from: startDate)
    }
}