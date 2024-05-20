import Foundation
import Ignite


class AppInfo {
    let name: String
    let description: String
    let imagePath: String
    let link: URL
    let policy: (any StaticPage)?

    init(name: String, description: String, imagePath: String, link: URL, policy: (any StaticPage)? = nil) {
        self.name = name
        self.description = description
        self.imagePath = imagePath
        self.link = link
        self.policy = policy
    }
}

struct Portfolio: StaticPage {
    var title: String = "Portfolio"
    var apps = [
        AppInfo(
            name: "Movizzz", 
            description: "Couch assistant", 
            imagePath: "/images/apps/movizzz.png", 
            link: URL("https://apps.apple.com/us/app/movizzz/id1632977253"),
            policy: PrivacyMovizzz()
        ),
        AppInfo(
            name: "FitTrackr", 
            description: "Log your workouts with ease", 
            imagePath: "/images/apps/fittrackr.png", 
            link: URL("https://apps.apple.com/us/app/fittrackr/id1606759220"),
            policy: PrivacyFitTrackr()
        )
    ]
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text("iOS apps portfolio")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle("#5b755e")

        Text("Here are some of my iOS apps")
                .font(.title6)
                .fontWeight(.thin)
                .foregroundStyle(.gray)

        Divider()

        Group {
            for app: AppInfo in apps {
                appCard(for: app)
            }
        }
        .class("wrapper")
        .style("display: flex", "justify-content: space-evenly")
    }

    func appCard(for app: AppInfo) -> BaseElement {
        Card {
            Image(decorative: app.imagePath)
                .frame(width: "200px")
                .cornerRadius("30px")

            Text(app.name)
                .font(.title4)
                .margin(.top, "10px")
                
            Text(app.description)
                .font(.title6)
                .fontWeight(.ultraLight)

            Spacer()

            Link(target: app.link.absoluteString) {
                Image(decorative: "/images/apps/appstore-download-badge.svg")
                    .resizable()
                    .frame(width: "125px")
            }

            Spacer()

            Link("Privacy policy", target: app.policy ?? BlankPrivacy())
                .style("text-decoration:none", "font-size: 12px; color: #5b755e")
        }
        .cornerRadius("60px")
        .padding([.top, .horizontal], "30px")
        .padding(.bottom, "5px")
        .style("border: none", "background-color: rgb(245, 245, 245)")
        .horizontalAlignment(.center)
    }
}
