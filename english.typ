#import "cv.typ": cv, experience, skill, list_interests
// Font Awesome removed; using Unicode icons instead

#cv(
  name: "Luke Collins",
  links: (
    (link: "mailto:luke@lukecollins.dev", icon: "✉"),
    (link: "https://github.com/lukejcollins", display: "lukejcollins",
      icon: "🐙"),
    (link: "https://www.linkedin.com/in/luke-j-collins/",
      display: "Luke Collins", icon: "🔗"),
  ),
  occupation: "Resilience Engineer",
  tagline: [Solving problems for IT teams. Check out my Github
    #link("https://github.com/lukejcollins/lukejcollins", "here").],
  left_column: [
    == Work Experience

    #experience("images/britishredcross.jpg")[Resilience Engineer][British Red Cross][2024 --- present][WFH]

    I design and operate internal tooling that helps teams improve reliability
    and observability across Azure and third-party systems. I build end-to-end
    visibility with health, log, and synthetic monitoring to surface risks
    early and reduce incident impact and response times.

    I develop lightweight checks and automation that validate resilience in
    complex environments. I establish standards and frameworks so teams share
    clear signals, detect faults faster, and resolve issues faster and more reliably.

    I work with stakeholders to map critical user journeys and define
    SLOs, aligning monitoring and alerting with business outcomes.

    #experience("images/ovoenergy.png")[Senior Solutions Engineer][OVO Energy][2022 --- 2024][Bristol, UK]

    I led the design and delivery of scalable, resilient solutions within the
    Enterprise Technology function, improving reliability for core platforms
    used by internal teams. I focused on automation to reduce operational risk
    and support team efficiency.

    I worked with engineering and IT support teams to deliver practical
    solutions that improved stability and streamlined workflows, reducing
    operational overhead.

    #experience("images/ovoenergy.png")[Process Improvement Specialist][OVO Energy][2021 --- 2022][Bristol, UK]

    I improved IT processes within the Enterprise Technology function by
    streamlining operations and improving system reliability. I built
    automation to reduce manual effort and errors across support workflows.

    Through analysis and optimisation I improved team efficiency and
    operational reliability.

    == Education

    #experience("images/uwe.png")[BA International Relations (First Class Honours)][University of the West of England][2007 --- 2010][Bristol, UK]

    Earned a degree in International Relations, gaining skills in analysis,
    negotiation, and cross-cultural communication. This foundation enriches
    my approach to problem-solving and team collaboration in any setting.

    #experience("images/teflplus.png")[TEFL Certificate][TEFLPlus][2011][Phuket, Thailand]

    Completed a TEFL Certificate in Phuket, enhancing communication, teaching,
    and adaptability skills in diverse environments.

    == Interests

    #list_interests((
      "Emacs",
      "Open source",
      "Python",
      "Learning",
      "Music",
      "Video games",
      "Keyboards",
      "Board games",
      "Cycling",
      "Home labbing",
      "Travelling"
    ))
  ],
  right_column_header: "Skills",
  languages_header: "Platforms",
  other_technologies_header: "Languages & Frameworks",
  right_column: [
    === Methodologies

    #skill("Architecture", 4)
    #skill("Process Automation", 4)
    #skill("DevOps", 3)
    #skill("Reliability", 4)

    == Spoken Languages

    #skill("English", 5)
    #skill("French", 1)
    #skill("Thai", 1)

    == Other Merits

    - #link("https://learn.microsoft.com/en-us/users/lukecollins-6396/credentials/54a21844c21a86e4",
      "Azure Administrator Associate")
    - #link("https://www.credly.com/badges/6b251816-89ab-4b48-aa66-3c2debc47b32/public_url",
      "AWS Solutions Architect Professional")
    - #link("https://www.credly.com/badges/604c2a30-8ea2-4327-8eb0-1b2a888793f6/public_url",
      "AWS SysOps Administrator Associate")
    - #link("https://www.credly.com/badges/6a0580b0-bb06-45fd-b60f-f831a75fa24c/public_url",
      "AWS Developer Associate")
  ],
  footer_content: [My CV is open-source. Its source code is available at
    #link("https://github.com/lukejcollins/cv").]
)
