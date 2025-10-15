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

    #experience("images/britishredcross.jpg")[Resilience Engineer][British Red Cross][2024-09 --- present][WFH]

    I improve reliability and observability across Azure and third-party
    systems. I build end-to-end visibility with health, log, and synthetic
    monitoring to surface risks early and cut incident impact.

    I design lightweight checks and automation that validate resilience in
    complex environments. I help set standards and frameworks so teams share
    clear signals, detect faults faster, and run more stable services.

    I partner with stakeholders to map critical user journeys and define
    SLOs, aligning monitoring and alerting to outcomes.

    #experience("images/ovoenergy.png")[Senior Solutions Engineer][OVO Energy][2022 --- 2024-09][Bristol, UK]

    I led the design and delivery of scalable, resilient systems that raised
    performance and reliability for core platforms. I focused on automation
    and integration to reduce operational risk while supporting growth.

    I worked with engineering and operations to ship practical solutions that
    strengthened stability and streamlined delivery. The result was more
    consistent and dependable service outcomes.

    #experience("images/ovoenergy.png")[Process Improvement Specialist][OVO Energy][2021 --- 2022][Bristol, UK]

    I advanced IT processes by streamlining operations and improving system
    reliability. I wrote code, refined deployments, and automated routine
    workflows to cut manual effort and errors.

    Through analysis and optimisation I increased team agility and uptime.
    This strengthened the stability and efficiency of the environment.

    == Education

    #experience("images/uwe.png")[BA International Relations (First Class Honours)][University of the West of England][2007 --- 2010][Bristol, UK]

    Earned a degree in International Relations, gaining skills in analysis,
    negotiation, and cross-cultural communication. This foundation enriches
    my approach to problem-solving and team collaboration in any setting.

    #experience("images/teflplus.png")[TEFL Certificate][TEFLPlus][2011][Phuket, Thailand]

    Completed a TEFL Certificate in Phuket, enhancing communication, teaching,
    and adaptability skills in diverse environments.

    #v(9pt)

    == Interests

    #list_interests((
      "Emacs",
      "Open source",
      "Python",
      "Tooling",
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
  other_technologies_header: "Languages",
  right_column: [
    === Methodologies

    #skill("Architecture", 4)
    #skill("Agile", 4)
    #skill("DevOps", 3)
    #skill("Solutions", 5)

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
  ],
  footer_content: [My CV is open-source. Its source code is available at
    #link("https://github.com/lukejcollins/cv").]
)
