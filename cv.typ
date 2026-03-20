// Minimal monochrome theme for a single-page CV.

#let primary_color = rgb("#111111")
#let secondary_color = rgb("#3f3f3f")
#let gray_color = rgb("#6a6a6a")
#let border_color = rgb("#b9b9b9")

#let sans_serif_font = "DejaVu Sans"
#let serif_font = "DejaVu Serif"

#let contact_info(services) = {
  set text(weight: "regular", font: sans_serif_font, fill: secondary_color, size: 8pt)

  services.map(service => {
    if "display" in service.keys() {
      link(service.link, service.display)
    } else {
      link(service.link)
    }
  }).join([ #text(fill: gray_color, " / ") ])
}

#let header_info(name, links, occupation, tagline) = {
  set text(font: sans_serif_font)
  let date = text(size: 8pt, weight: "regular", fill: gray_color, datetime.today().display())
  [
    #set text(font: serif_font)
    = #name
    #v(2pt)
    #set text(font: sans_serif_font)
    #set par(justify: false)
    #show link: body => text(body, fill: primary_color)
    #text(weight: "medium", occupation)
    #text(fill: gray_color, " / ")
    #text(style: "italic", fill: secondary_color, tagline)
    #v(5pt)
    #contact_info(links)
    #v(3pt)
    #date
  ]
}

#let experience(name, company_name, period, location) = {
  set text(font: sans_serif_font)
  v(6pt)
  grid(
    columns: (1fr, auto),
    column-gutter: 9pt,
    {
      set par(justify: false)
      text(weight: "bold", name)
      v(2pt)
      text(style: "italic", fill: secondary_color, company_name)
    },
    {
      set align(right + top)
      set text(size: 8.2pt, fill: gray_color)
      period
      linebreak()
      location
    },
  )
  v(3pt)
}

#let skill(name, rating) = {
  let max_rating = 5

  let circles = range(0, max_rating).map(i => {
    let color = primary_color
    if i >= rating {
      color = border_color
    }

    box(circle(radius: 4pt, fill: color))
  }).join(h(4pt))

  name; h(1fr); circles; [\ ]
}

// Produces the LaTeX symbol
#let LaTeX = context {
  set text(font: "DejaVu Serif")
  let l = measure(text(1em, "L"))
  let a = measure(text(0.7em, "A"))
  let A = text(0.7em, baseline: a.height - l.height, "A")
  let e = measure(text(1em, "E"))
  let E = text(1em, baseline: e.height / 4, "E")
  box("L" + h(-0.3em) + A + h(-0.1em) + "T" + h(-0.1em) + E + h(-0.125em) + "X")
}

#let bubble(content) = {
  box(
    stroke: 0.7pt + border_color,
    inset: (x: 6pt, y: 2.5pt),
    radius: 20pt,
    text(size: 7.8pt, weight: "medium", fill: secondary_color, font: sans_serif_font, content)
  )
}

#let list_interests(interests) = {
  set par(leading: 5pt, justify: false)
  interests.map(interest => bubble(interest)).join(h(4pt))
}

#let footer(content) = [
  #set align(center)
  #set text(6.5pt, fill: gray_color, font: sans_serif_font)

  #show link: body => underline(text(body, fill: secondary_color, weight: "bold"))

  #line(length: 100%, stroke: 0.5pt + gray_color)
  #content
]

#let programming_skills(header, languages_header, other_technologies_header) = {
  [== #header]

  [=== #languages_header]

  skill("Active Directory", 3)
  skill("AWS", 3)
  skill("Atlassian/Jira", 4)
  skill("Azure", 3)
  skill("Google Workspace", 3)
  skill("GCP", 2)
  skill("Grafana", 3)
  skill("Github Actions", 4)
  skill("Linux", 4)
  skill("MacOS", 3)
  skill("Microsoft Entra", 3)
  skill("Terraform", 3)
  skill("Windows", 3)

  [=== #other_technologies_header]

  skill("C++", 1)
  skill("Elisp", 2)
  skill("HTML/CSS", 2)
  skill("Java", 1)
  skill("Javascript", 1)
  skill("Playwright", 3)
  skill("PowerShell", 3)
  skill("Python", 3)
  skill("Rust", 1)
  skill("Shell", 3)
  skill("SQL", 2)
}

#let cv(
  name: "",
  links: (),
  occupation: "",
  tagline: [],
  left_column: [],
  right_column_header: "",
  languages_header: "",
  other_technologies_header: "",
  right_column: [],
  footer_content: []
) = {
  set text(9pt, font: sans_serif_font, fallback: true)
  set page(
    margin: (left: 22pt, right: 22pt, top: 27pt, bottom: 35pt),
    footer: footer(footer_content),
  )
  set par(justify: true)
  set par(leading: 0.56em)

  show heading.where(level: 2): it => text(font: serif_font, fill: primary_color, [
    #v(5pt)
    #{it.body}
    #v(-6pt)
    #line(length: 100%, stroke: 0.8pt + primary_color)
  ])
  show heading.where(level: 4): it => text(font: serif_font, fill: primary_color, it.body)
  show heading: it => text(font: serif_font, it)

  header_info(name, links, occupation, tagline)

  v(-2pt)

  grid(
    columns: (1.3fr, 0.7fr),
    gutter: 16pt,
    left_column,
    {
      show link: body => underline(text(body, fill: primary_color))
      programming_skills(right_column_header, languages_header, other_technologies_header)
      right_column
    },
  )
}
