import Foundation
import Ignite

struct PrivacyFitTrackr: StaticPage {
    var appName: String = "FitTrackr"
    var startDate: String = " 2022-01-24"
    var title: String = "FitTrackr Privacy Policy"
    var path = "/privacy/fittrackr"
    
    func body(context: PublishingContext) -> [BlockElement] {
        defaultPrivacyContent(for: appName, from: startDate)
    }
}