import Foundation
import Ignite


struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        NavigationBar(logo: "&#60;JDU&#62;") {
            Link("Portfolio", target: Portfolio())
            Link("Contact", target: "/contact")
        }
        .background("#5b755e")
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .cornerRadius(10)
        .style("font-family: Source Code Pro, monospace")
        
        Spacer(size: 50)

        Group {
            Image(decorative: "images/dall_e_me.png")
                .resizable()
                .frame(width: "125px")
                .style("border-radius: 100%")
            
            Text("Jean Demeusy")
                .font(.title1)
                .fontWeight(.bold)
                .foregroundStyle("#5b755e")
            
            Text("Data scientist and old computer vision engineer, now into Swift and privacy")
                .font(.title5)
                .fontWeight(.thin)
                .foregroundStyle(.gray)
            
            Link(
                Image(decorative: "images/movizzz-1280x720.png")
                    .resizable()
                    .frame(width: "40%")
                    .style("border-radius: 40px")
                    .margin(.vertical, .large),
                target: "/"
            )
            .hidden()

            Spacer(size: 50)

            Group {         
                bottomBarLink(
                    image: "images/icons/linkedin.svg", 
                    target: "http://linkedin.com/in/jean-demeusy"
                )

                bottomBarLink(
                    image: "images/icons/x.svg", 
                    target: "https://x.com/0xffff60"
                )           
                
                bottomBarLink(
                    image: "images/icons/github.svg", 
                    target: "https://github.com/jeandemeusy"
                )

                bottomBarLink(
                    image: "images/icons/mail.svg", 
                    target: "mailto:dev.jdu@gmail.com"
                )
            }
            .class("wrapper")
            .style("display: flex", "justify-content: center")
            .frame(width: "35px", height: "35px")
        }
        .horizontalAlignment(.center)
    }

    func bottomBarLink(image: String, target: Any) -> InlineElement{
        var decodedTarget: String = ""

        if let target = target as? any StaticPage {
            decodedTarget = target.path
        }
        if let target = target as? String {
            decodedTarget = target
        }

        return Link(target: decodedTarget) {
            Image(image)
                .style("margin: 7px")
            }
            .style("display: flex") 
    }
}
