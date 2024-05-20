import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = Website()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct Website: Site {    
    var name = "gidehu"
    var titleSuffix = " | Jean Demeusy"
    var url = URL("https://www.gidehu.com")
    var builtInIconsEnabled = true
    var favicon = URL("./Assets/images/icons/favicon.png")
    
    var author = "Jean Demeusy"

    var homePage = Home()
    var theme = MyTheme()

    var pages: [any StaticPage] = [
        Portfolio(),
        PrivacyMovizzz(),
        PrivacyFitTrackr(),
        BlankPrivacy(),
    ]
}