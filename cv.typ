// Removed Font Awesome package due to compatibility issues

#let primary_color = rgb("#2b4277") // darker blue
#let secondary_color = rgb("#677fb2") // lighter blue
#let gray_color = rgb("#7c7c7c") // light gray

#let sans_serif_font = "Fira Sans"
#let code_font = "Fira Code"

#let contact_info(services) = {
  let glyph(icon) = {
    box(baseline: 2.5pt, height: 11pt, text(font: sans_serif_font, fallback: true, icon, size: 10pt))
    h(3pt)
  }

  set text(weight: "bold", font: code_font, fill: primary_color, size: 8pt)

  services.map(service => {
    glyph(service.icon)

    if "display" in service.keys() {
      link(service.link, service.display)
    } else {
      link(service.link)
    }
  }).join(h(10pt))
}

#let header_info(name, links, occupation, tagline, image_path) = {
  set text(font: sans_serif_font)
  let date = text(size: 8pt, weight: "regular", fill: gray_color, datetime.today().display())
  grid(
    columns: (6fr, 1fr),
    gutter: 15pt,
    align(start + horizon, {
      [= #name]
      v(2pt)
      {
        show link: body => text(body, fill: primary_color)
        occupation; [ -- ]; text(style: "italic", tagline)
        // occupation; text(style: "italic", fill: gray_color, {[ -- ]; tagline})
      }

      v(-5pt)
      date // TODO: try moving date to contact_info

      v(0pt)
      contact_info(links)
    }),
    align(end + horizon, image(image_path, height: 8%))
  )
}

#let experience(image_path, name, company_name, period, location) = {
  set table( inset: 0pt, stroke: none)
  set align(horizon)
  set text(font: sans_serif_font)
  let row_spacing = 4pt
  let right_text_font_size = 9pt

  v(5pt)

  table(
    columns: (20pt, 1fr),
    column-gutter: 5pt,
    image(image_path),
    table(
      columns: (1fr, auto),
      {
        set par(justify: false)

        text(weight: "bold", name)
      },
      {
        set align(right + bottom)
        set text(right_text_font_size, weight: "light")

        period; h(3pt); text(size: 10pt, fill: secondary_color, "•")
      },
      {
        v(row_spacing)
        text(style: "italic", company_name)
      },
      {
        set text(right_text_font_size, weight: "light")
        set align(right)

        v(row_spacing)
        location; h(3pt); text(size: 10pt, fill: secondary_color, "•")
      },
    )
  )

  v(-5pt)
}

#let skill(name, rating) = {
  let max_rating = 5

  let circles = range(0, max_rating).map(i => {
    let color = secondary_color
    if i >= rating {
      color = rgb("#c0c0c0") // gray
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
    fill: secondary_color,
    inset: 4pt,
    radius: 6pt,
    text(weight: "semibold", fill: white, font: sans_serif_font , content)
  )
}

#let list_interests(interests) = {
  set par(leading: 5pt, justify: false)
  interests.map(interest => bubble(interest)).join(h(4pt))
}

#let footer(content) = [
  #set align(center)
  #set text(6.5pt, fill: gray_color, font: code_font)

  #show link: body => underline(text(body, fill: secondary_color, weight: "bold"))

  #line(length: 100%, stroke: 0.5pt + gray_color)
  #text(size: 10pt, fill: secondary_color, ">") #content
]

#let programming_skills(header, languages_header, other_technologies_header) = {
  [== #header]

  [=== #languages_header]

  skill("Active Directory", 3)
  skill("AWS", 3)
  skill("Atlassian/Jira", 4)
  skill("Azure", 3)
  skill("Docker", 4)
  skill("GCP", 2)
  skill("Git", 4)
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
  skill("Scala", 1)
  skill("Shell", 3)
  skill("SQL", 2)
  skill("Typst", 2)
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
  set text(9.8pt, font: sans_serif_font, fallback: true)
  set page(margin: (x: 32pt, y: 35pt), footer: footer(footer_content))
  set par(justify: true)

  show heading.where(level: 2): it => text(fill: primary_color, [
    #v(5pt)
    #{it.body}
    #v(-7pt)
    #line(length: 100%, stroke: 1pt + primary_color)
  ])
  show heading.where(level: 4): it => text(fill: primary_color, it.body)
  show heading: it => text(font: sans_serif_font, it)

  header_info(name, links, occupation, tagline, "images/me.jpeg")

  v(-8pt)

  grid(
    columns: (1fr, 0.54fr),
    gutter: 15pt,
    left_column,
    {
      show link: body => underline(text(body, fill: primary_color))
      programming_skills(right_column_header, languages_header, other_technologies_header)
      right_column
    },
  )
}
