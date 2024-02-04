#import "cv.typ": cv, experience, skill, list_interests
#import "@preview/fontawesome:0.1.0": *

#cv(
  name: "Luke Collins",
  links: (
    (link: "mailto:luke@lukecollins.dev", icon: fa-at()),
    (link: "https://github.com/lukejcollins", display: " lukejcollins", icon: fa-github()),
    (link: "https://www.linkedin.com/in/luke-j-collins/", display: " Luke Collins", icon: fa-linkedin()),
  ),
  occupation: "Senior Process Improvement Specialist",
  tagline: [Solving problems for Enterprise IT teams. Check my Github #link("https://github.com/lukejcollins/lukejcollins", "here").],
  left_column: [
    == Work Experience

    #experience("images/ovoenergy.png")[Senior Process Improvement Specialist][OVO Energy][2022 --- present][Bristol, UK]

    As a seasoned leader in enterprise IT process improvement, I spearhead a team dedicated to refining system efficiency and robustness. Leveraging a deep understanding of automation, continuous integration, and operational resilience, I enhance workflows and system reliability.

    My approach fosters cross-disciplinary collaboration and innovative solutions, ensuring scalable and fault-tolerant IT environments.

    #experience("images/ovoenergy.png")[Process Improvement Specialist][OVO Energy][2021 --- 2022][Bristol, UK]

    In my role as a Process Improvement Specialist, I played a hands-on part in advancing IT processes, focusing on streamlining operations and bolstering system stability.
    
    My work involved direct involvement in coding, refining deployment practices, and automating routine tasks. I contributed to enhancing team agility and system uptime, employing a meticulous approach to troubleshoot and optimise IT infrastructure.

    #experience("images/ovoenergy.png")[IT Support Engineer][OVO Energy][2019 --- 2021][Bristol, UK]

    As an IT Support Engineer, I ensured system uptime and quick issue resolution through first/second line support, proactive monitoring, and troubleshooting. I advanced automation for better efficiency and laid the foundation for resilient operations.

    #experience("images/ovoenergy.png")[Senior Customer Service Specialist][OVO Energy][2017 --- 2019][Bristol, UK]

    As a Senior Customer Service Specialist, I excelled in energy billing support, boosting customer trust and satisfaction. Skilled in system analysis and query resolution, I enhanced service reliability. Led data and process optimisation, improving system efficiency.

    == Education

    #experience("images/uwe.png")[BA International Relations (First Class Honours)][University of the West of England][2007 --- 2010][Bristol, UK]

    Earned a degree in International Relations, gaining skills in analysis, negotiation, and cross-cultural communication. This foundation enriches my approach to problem-solving and team collaboration in any professional setting.

    #experience("images/teflplus.png")[TEFL Certificate][TEFLPlus][2011][Phuket, Thailand]

    Completed a TEFL Certificate in Phuket, enhancing my communication, teaching, and adaptability skills in diverse environments, valuable for engaging effectively in any professional context.

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

    - #link("https://www.credly.com/badges/ec64ee0a-4b8a-40b7-8f00-af56351ed35b?source=linked_in_profile", "AWS Solutions Architect Associate")
    - #link("https://www.credly.com/badges/6a0580b0-bb06-45fd-b60f-f831a75fa24c/public_url", "AWS Developer Associate")
    - #link("https://www.credly.com/badges/604c2a30-8ea2-4327-8eb0-1b2a888793f6/public_url", "AWS SysOps Administrator Assosicate")
  ],
  footer_content: [My CV is open-source. If you're curious, its source code is available at #link("https://github.com/lukejcollins/cv").]
)
