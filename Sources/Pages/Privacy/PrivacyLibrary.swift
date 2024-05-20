import Ignite

func defaultPrivacyContent(for appName: String = "Blank", from startDate: String = "---") -> BlockElement {
    return Group {
        Text("\(appName) Privacy Policy")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle("#5b755e")

        Divider()

        bodyText("""
        Jean Demeusy built the \(appName) app as a Commercial app. This service is provided by Jean Demeusy and is intended for use as is.<br><br>

        This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.<br><br>

        If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.<br><br>

        The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at \(appName) unless otherwise defined in this Privacy Policy.
        """)

        subtitleText("Information Collection and Use")

        bodyText("""
        For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.
        """)

        subtitleText("Log Data")
        bodyText("""
        I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data.
        This Log Data may include information such as your device Internet Protocol ('IP') address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.
        """)

        subtitleText("Cookies")
        bodyText("""
        Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.<br><br>

        This Service does not use these 'cookies' explicitly. However, the app may use third-party code and libraries that use "cookies" to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.
        """)

        subtitleText("Service Providers")
        bodyText("""
        I may employ third-party companies and individuals due to the following reasons:
        <ul>
        <li>To facilitate our Service;</li>
        <li>To provide the Service on our behalf;</li>
        <li>To perform Service-related services; or</li>
        <li>To assist us in analyzing how our Service is used.</li>
        </ul>
        I want to inform users of this Service that these third parties have access to their Personal Information.
        The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.
        """)

        subtitleText("Security")
        bodyText("""
        I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.
        """)
        
        subtitleText("Links to Other Sites")
        bodyText("""
        This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.
        """)
        
        subtitleText("Children's Privacy")
        bodyText("""
        I do not knowingly collect personally identifiable information from children. I encourage all children to never submit any personally identifiable information through the Application and/or Services. I encourage parents and legal guardians to monitor their children's Internet usage and to help enforce this Policy by instructing their children never to provide personally identifiable information through the Application and/or Services without their permission.<br><br>

        If you have reason to believe that a child has provided personally identifiable information to us through the Application and/or Services, please contact us. You must also be at least 16 years of age to consent to the processing of your personally identifiable information in your country (in some countries we may allow your parent or guardian to do so on your behalf).
        """)
        
        subtitleText("Changes to This Privacy Policy")
        bodyText("""
        I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.<br><br>

        This policy is effective as of \(startDate)
        """)
        
        subtitleText("Contact Us")
        bodyText("""
        If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at dev.jdu@gmail.com.
        """)
    }
    .style("width: 96%", "max-width: 810px", "margin: 0 auto")
}