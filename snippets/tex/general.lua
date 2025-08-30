return {
  s({ trig = 'boldtext', desc = 'bold text' }, fmta([[\textbf{<>}]], { i(1) })),
  s(
    { trig = 'align', desc = 'unnumbered align mode' },
    fmta(
      [[
    \begin{align*}
        <>
    \end{align*}
    ]],
      { i(1) }
    )
  ),
  s(
    { trig = 'begin', desc = 'Begin Enviroment' },
    fmta(
    [[
    \begin{<>}
        <>
    \end{<>}
    ]],
    { i(1), i(0), rep(1)})
  ),
  s(
    { trig = 'Homework' },
    fmta(
      [[
    %! TeX program = lualatex
    \documentclass[12pt]{article}
    \usepackage{silence}
    \WarningFilter{latex}{You have requested package}
    \usepackage{homework}
    \lhead{Mia Bennett}
    \chead{<> - HW}
    \rhead{\today}
    \cfoot{\thepage}

    \begin{document}
    <>
    \end{document}
    ]],
      { i(1), i(0) }
    )
  ),
  s(
    { trig = 'Writeup' },
    fmta(
      [[
    %! TeX program = lualatex
    \documentclass[12pt]{article}
    \usepackage{silence}
    \WarningFilter{latex}{You have requested package}
    \usepackage{writeup}

    \begin{document}
    <>
    \end{document}
    ]],
      { i(0) }
    )
  ),
}
